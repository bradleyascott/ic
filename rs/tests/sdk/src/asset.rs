use candid::Principal;
use ic_tests::driver::{boundary_node::BoundaryNodeVm, test_env::TestEnv};
use slog::info;

pub fn get_asset_as_string(
    env: &TestEnv,
    boundary_node_name: &str,
    canister_id: &Principal,
    key: &str,
) -> String {
    let log = env.logger();
    info!(log, "GET asset {key} as string from canister {canister_id} through boundary node {boundary_node_name}");
    let boundary_node = env
        .get_deployed_boundary_node(boundary_node_name)
        .unwrap()
        .get_snapshot()
        .unwrap();
    let farm_url = boundary_node.get_playnet().unwrap();
    info!(log, "farm url is {farm_url}");

    let asset_url = format!("https://{canister_id}.{farm_url}{key}");
    info!(log, "asset url is {asset_url}");

    let client = reqwest::blocking::Client::new();
    let req = client.get(asset_url);
    let response = req.send().unwrap();
    let body = response.text().unwrap();
    info!(log, "response body: {body}");
    body
}

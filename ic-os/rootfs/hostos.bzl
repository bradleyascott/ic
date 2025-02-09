"""
Enumerate every rootfs file dependency for HostOS
"""

rootfs_files = {
    Label("hostos/etc/chrony/chrony.conf"): "/etc/chrony/chrony.conf",
    Label("hostos/etc/default/locale"): "/etc/default/locale",
    Label("hostos/etc/fstab"): "/etc/fstab",
    Label("hostos/etc/hosts"): "/etc/hosts",
    Label("hostos/etc/nftables.conf"): "/etc/nftables.conf",
    Label("hostos/etc/resolv.conf"): "/etc/resolv.conf",
    Label("hostos/etc/sudoers"): "/etc/sudoers",
    Label("hostos/etc/sysctl.d/network-tweaks.conf"): "/etc/sysctl.d/network-tweaks.conf",
    Label("hostos/etc/systemd/resolved.conf.d/fallback.conf"): "/etc/systemd/resolved.conf.d/fallback.conf",
    Label("hostos/etc/systemd/system/generate-network-config.service"): "/etc/systemd/system/generate-network-config.service",
    Label("hostos/etc/systemd/system/guestos.service"): "/etc/systemd/system/guestos.service",
    Label("hostos/etc/tmpfiles.d/ic-node.conf"): "/etc/tmpfiles.d/ic-node.conf",
    Label("hostos/etc/udev/rules.d/20-ipmi.rules"): "/etc/udev/rules.d/20-ipmi.rules",
    Label("hostos/opt/ic/bin/detect-first-boot.sh"): "/opt/ic/bin/detect-first-boot.sh",
    Label("hostos/opt/ic/bin/fetch-mgmt-mac.sh"): "/opt/ic/bin/fetch-mgmt-mac.sh",
    Label("hostos/opt/ic/bin/manageboot.sh"): "/opt/ic/bin/manageboot.sh",
    Label("hostos/opt/ic/bin/setup-var.sh"): "/opt/ic/bin/setup-var.sh",
    Label("hostos/opt/ic/bin/start-guestos.sh"): "/opt/ic/bin/start-guestos.sh",
    Label("hostos/opt/ic/bin/stop-guestos.sh"): "/opt/ic/bin/stop-guestos.sh",
    Label("hostos/opt/ic/share/guestos.xml.template"): "/opt/ic/share/guestos.xml.template",
    Label("hostos/opt/ic/share/kvm-cpu.xml"): "/opt/ic/share/kvm-cpu.xml",
    Label("hostos/opt/ic/share/qemu-cpu.xml"): "/opt/ic/share/qemu-cpu.xml",
    Label("hostos/etc/default/node_exporter"): "/etc/default/node_exporter",
    Label("hostos/etc/systemd/system/node_exporter.service"): "/etc/systemd/system/node_exporter.service",
    Label("hostos/etc/node_exporter/node_exporter.crt"): "/etc/node_exporter/node_exporter.crt",
    Label("hostos/etc/node_exporter/node_exporter.key"): "/etc/node_exporter/node_exporter.key",
    Label("hostos/etc/node_exporter/web.yml"): "/etc/node_exporter/web.yml",
    Label("hostos/etc/hostname"): "/etc/hostname",
    Label("hostos/etc/initramfs-tools/initramfs.conf"): "/etc/initramfs-tools/initramfs.conf",
    Label("hostos/etc/initramfs-tools/modules"): "/etc/initramfs-tools/modules",
    Label("hostos/etc/initramfs-tools/scripts/init-bottom/set-machine-id/set-machine-id"): "/etc/initramfs-tools/scripts/init-bottom/set-machine-id/set-machine-id",
    Label("hostos/etc/metrics-proxy.yaml"): "/etc/metrics-proxy.yaml",
    Label("hostos/etc/systemd/system/metrics-proxy.service"): "/etc/systemd/system/metrics-proxy.service",
    Label("hostos/opt/ic/bin/generate-guestos-config.sh"): "/opt/ic/bin/generate-guestos-config.sh",
    Label("hostos/etc/systemd/system/generate-guestos-config.service"): "/etc/systemd/system/generate-guestos-config.service",
    Label("hostos/opt/ic/bin/monitor-guestos.sh"): "/opt/ic/bin/monitor-guestos.sh",
    Label("hostos/etc/systemd/system/monitor-guestos.service"): "/etc/systemd/system/monitor-guestos.service",
    Label("hostos/etc/systemd/system/monitor-guestos.timer"): "/etc/systemd/system/monitor-guestos.timer",
    Label("hostos/opt/ic/bin/monitor-nvme.sh"): "/opt/ic/bin/monitor-nvme.sh",
    Label("hostos/etc/systemd/system/monitor-nvme.service"): "/etc/systemd/system/monitor-nvme.service",
    Label("hostos/etc/systemd/system/monitor-nvme.timer"): "/etc/systemd/system/monitor-nvme.timer",
    Label("hostos/opt/ic/bin/monitor-power.sh"): "/opt/ic/bin/monitor-power.sh",
    Label("hostos/etc/systemd/system/monitor-power.service"): "/etc/systemd/system/monitor-power.service",
    Label("hostos/etc/systemd/system/monitor-power.timer"): "/etc/systemd/system/monitor-power.timer",
    Label("hostos/opt/ic/bin/setup-libvirt.sh"): "/opt/ic/bin/setup-libvirt.sh",
    Label("hostos/etc/systemd/system/setup-libvirt.service"): "/etc/systemd/system/setup-libvirt.service",
    Label("hostos/etc/systemd/system/vsock-agent.service"): "/etc/systemd/system/vsock-agent.service",
    Label("hostos/etc/udev/rules.d/10-vhost-vsock.rules"): "/etc/udev/rules.d/10-vhost-vsock.rules",

    # consolidated files:
    Label("systemd-generators/hostos/mount-generator"): "/etc/systemd/system-generators/mount-generator",
    Label("systemd-generators/systemd-gpt-auto-generator"): "/etc/systemd/system-generators/systemd-gpt-auto-generator",
    Label("utils/metrics.sh"): "/opt/ic/bin/metrics.sh",
    Label("save-machine-id/save-machine-id.sh"): "/opt/ic/bin/save-machine-id.sh",
    Label("save-machine-id/save-machine-id.service"): "/etc/systemd/system/save-machine-id.service",
    Label("setup-node_exporter-keys/setup-node_exporter-keys.sh"): "/opt/ic/bin/setup-node_exporter-keys.sh",
    Label("setup-node_exporter-keys/setup-node_exporter-keys.service"): "/etc/systemd/system/setup-node_exporter-keys.service",
    Label("systemd-user/user@.service"): "/etc/systemd/system/user@.service",
    Label("utils/install-upgrade.sh"): "/opt/ic/bin/install-upgrade.sh",
    Label("relabel-machine-id/relabel-machine-id.sh"): "/opt/ic/bin/relabel-machine-id.sh",
    Label("relabel-machine-id/relabel-machine-id.service"): "/etc/systemd/system/relabel-machine-id.service",
    Label("setup-hostname/hostos/setup-hostname.sh"): "/opt/ic/bin/setup-hostname.sh",
    Label("setup-hostname/hostos/setup-hostname.service"): "/etc/systemd/system/setup-hostname.service",
    Label("utils/hostos/fetch-property.sh"): "/opt/ic/bin/fetch-property.sh",
    Label("ssh/setup-ssh-keys/setup-ssh-keys.sh"): "/opt/ic/bin/setup-ssh-keys.sh",
    Label("ssh/setup-ssh-keys/setup-ssh-keys.service"): "/etc/systemd/system/setup-ssh-keys.service",
    Label("ssh/setup-ssh-account-keys/hostos/setup-ssh-account-keys.sh"): "/opt/ic/bin/setup-ssh-account-keys.sh",
    Label("ssh/setup-ssh-account-keys/hostos/setup-ssh-account-keys.service"): "/etc/systemd/system/setup-ssh-account-keys.service",
    Label("ssh/deploy-updated-ssh-account-keys/deploy-updated-ssh-account-keys.sh"): "/opt/ic/bin/deploy-updated-ssh-account-keys.sh",
    Label("ssh/deploy-updated-ssh-account-keys/deploy-updated-ssh-account-keys.service"): "/etc/systemd/system/deploy-updated-ssh-account-keys.service",
}

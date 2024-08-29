cask "wireshark-chmodbpf" do
  arch arm: "Arm", intel: "Intel"

  version "4.4.0"
  sha256 arm:   "13349959456d29b9b5d2214ba7bfd8d88016f5ac24bf5a7a5a4945ff46584a29",
         intel: "edb07ee6afbce6b5231d08b301bab31c0ba6c31f7277f1a74bd370ec59369ef7"

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20#{arch}%2064.dmg"
  name "Wireshark-ChmodBPF"
  desc "Network protocol analyzer"
  homepage "https://www.wireshark.org/"

  livecheck do
    cask "wireshark"
  end

  conflicts_with cask: "wireshark"
  depends_on macos: ">= :sierra"

  pkg "Install ChmodBPF.pkg"

  uninstall_preflight do
    system_command "/usr/sbin/installer",
                   args:         ["-pkg", "#{staged_path}/Uninstall ChmodBPF.pkg", "-target", "/"],
                   sudo:         true,
                   sudo_as_root: true
  end

  uninstall pkgutil: "org.wireshark.ChmodBPF.pkg"

  caveats do
    reboot
    <<~EOS
      This cask will install only the ChmodBPF package from the current Wireshark
      stable install package.
      An access_bpf group will be created and its members allowed access to BPF
      devices at boot to allow unprivileged packet captures.
      This cask is not required if installing the Wireshark cask. It is meant to
      support Wireshark installed from Homebrew or other cases where unprivileged
      access to macOS packet capture devices is desired without installing the binary
      distribution of Wireshark.
      The user account used to install this cask will be added to the access_bpf
      group automatically.
    EOS
  end
end

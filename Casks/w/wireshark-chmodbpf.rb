cask "wireshark-chmodbpf" do
  version "4.6.3"
  sha256 "788fef0f62fc58d2523270256694efc30e79f3584d4895eb066ca333daa88fe9"

  url "https://www.wireshark.org/download/osx/all-versions/Wireshark%20#{version}.dmg"
  name "Wireshark-ChmodBPF"
  desc "Network protocol analyzer"
  homepage "https://www.wireshark.org/"

  livecheck do
    cask "wireshark-app"
  end

  conflicts_with cask: "wireshark-app"

  pkg "Install ChmodBPF.pkg"

  uninstall early_script: {
              executable:   "/usr/sbin/installer",
              args:         ["-pkg", "#{staged_path}/Uninstall ChmodBPF.pkg", "-target", "/"],
              sudo:         true,
              must_succeed: false,
            },
            pkgutil:      "org.wireshark.ChmodBPF.pkg"

  # No zap stanza required

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

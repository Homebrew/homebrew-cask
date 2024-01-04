cask "wireshark-chmodbpf" do
  arch arm: "Arm", intel: "Intel"

  version "4.2.1"
  sha256 arm:   "9ca7fcdb382c0665c77d580dd6b6db8a5d2e50758fc9f34bffbba267cfb49b37",
         intel: "35080517e048a7ca7a3fe80b88c9f4457e8b6f9948b3cbeb22c920fbacd7e234"

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

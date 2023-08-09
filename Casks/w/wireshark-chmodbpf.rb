cask "wireshark-chmodbpf" do
  arch arm: "Arm", intel: "Intel"

  version "4.0.7"
  sha256 arm:   "50a858f30e5db99206cbf56a74569d118d0f24026aa04546b4c87ae8f85dd24a",
         intel: "7ac1dcfc4a4c73fe20596385916382737bb1de5569e9b0790a7e6923432cd700"

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
                   args: [
                     "-pkg", "#{staged_path}/Uninstall ChmodBPF.pkg",
                     "-target", "/"
                   ],
                   sudo: true
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

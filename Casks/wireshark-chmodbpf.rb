cask "wireshark-chmodbpf" do
  version "3.4.0"
  sha256 "b0a09d499de618de8f17a0456047dd3839b78c3a57e64b6caf5a55ae5c398d8a"

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast "https://www.wireshark.org/update/0/Wireshark/0.0.0/macOS/x86-64/en-US/stable.xml"
  name "Wireshark-ChmodBPF"
  homepage "https://www.wireshark.org/"

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

cask "wireshark" do
  url_arch = Hardware::CPU.intel? ? "Intel" : "Arm"
  livecheck_arch = Hardware::CPU.intel? ? "86-" : "arm"

  version "3.6.0"

  url "https://2.na.dl.wireshark.org/osx/Wireshark%20#{version}%20#{url_arch}%2064.dmg"
  if Hardware::CPU.intel?
    sha256 "c571417d3318074fbe73814a0180e84262e10b58cadb2e80c9fc05cf97e99645"
  else
    sha256 "9893a985693c01b29b532745ca0f999590b119a3e8e9820a403291ffce11fd97"
  end

  name "Wireshark"
  desc "Network protocol analyzer"
  homepage "https://www.wireshark.org/"

  livecheck do
    url "https://www.wireshark.org/update/0/Wireshark/0.0.0/macOS/#{livecheck_arch}64/en-US/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask:    "wireshark-chmodbpf",
                 formula: "wireshark"
  depends_on macos: ">= :sierra"

  app "Wireshark.app"
  pkg "Install ChmodBPF.pkg"
  pkg "Add Wireshark to the system path.pkg"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/capinfos"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/captype"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/dftest"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/dumpcap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/editcap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/idl2wrs"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/mergecap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/mmdbresolve"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/randpkt"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/rawshark"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/reordercap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/sharkd"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/text2pcap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/tshark"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/androiddump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/ciscodump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/randpktdump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/sshdump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/udpdump"

  uninstall_preflight do
    system_command "/usr/sbin/installer",
                   args: [
                     "-pkg", "#{staged_path}/Uninstall ChmodBPF.pkg",
                     "-target", "/"
                   ],
                   sudo: true
    system_command "/usr/sbin/installer",
                   args: [
                     "-pkg", "#{staged_path}/Remove Wireshark from the system path.pkg",
                     "-target", "/"
                   ],
                   sudo: true
  end

  uninstall pkgutil: "org.wireshark.*"

  zap trash: [
    "~/Library/Caches/org.wireshark.Wireshark",
    "~/Library/Cookies/org.wireshark.Wireshark.binarycookies",
    "~/Library/Preferences/org.wireshark.Wireshark.plist",
    "~/Library/Saved Application State/org.wireshark.Wireshark.savedState",
    "~/Library/HTTPStorages/org.wireshark.Wireshark.binarycookies",
    "~/.config/wireshark",
  ]
end

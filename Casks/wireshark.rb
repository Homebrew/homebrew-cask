cask "wireshark" do
  arch arm: "Arm", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x86-"

  version "4.0.6"

  on_arm do
    sha256 "62fac39ba7848d19dff39804fd906908d9417157dfbcd6a9d4aac27956254f2e"

    depends_on macos: ">= :big_sur"
  end
  on_intel do
    sha256 "3c0d75cd363dc9753c57dd109683447ea0eedb97cab75108db18d387be5b92eb"

    depends_on macos: ">= :sierra"
  end

  url "https://2.na.dl.wireshark.org/osx/Wireshark%20#{version}%20#{arch}%2064.dmg"
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

  app "Wireshark.app"
  pkg "Add Wireshark to the system path.pkg"
  pkg "Install ChmodBPF.pkg"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/capinfos"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/captype"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/dftest"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/dumpcap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/editcap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/androiddump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/ciscodump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/randpktdump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/sshdump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/udpdump"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/idl2wrs"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/mergecap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/mmdbresolve"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/randpkt"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/rawshark"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/reordercap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/sharkd"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/text2pcap"
  binary "#{appdir}/Wireshark.app/Contents/MacOS/tshark"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/androiddump.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/capinfos.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/captype.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/ciscodump.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/dftest.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/dumpcap.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/editcap.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/etwdump.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/mergecap.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/mmdbresolve.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/randpkt.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/randpktdump.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/rawshark.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/reordercap.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/sshdump.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/text2pcap.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/tshark.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/udpdump.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/wireshark.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man4/extcap.4"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man4/wireshark-filter.4"

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
    "~/.config/wireshark",
    "~/Library/Caches/org.wireshark.Wireshark",
    "~/Library/Cookies/org.wireshark.Wireshark.binarycookies",
    "~/Library/HTTPStorages/org.wireshark.Wireshark.binarycookies",
    "~/Library/Preferences/org.wireshark.Wireshark.plist",
    "~/Library/Saved Application State/org.wireshark.Wireshark.savedState",
  ]
end

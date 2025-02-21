cask "wireshark" do
  arch arm: "Arm", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x86-"

  on_catalina :or_older do
    version "4.2.11"
    sha256 arm:   "aa12b6237fe04890816dc5163e4c2990aaf83da206ce51bb53375164b7fbbcde",
           intel: "11b3e1bb6b5b8f067b2d286c4805e7df0a487df59a432b5f3aef2c1d410b9747"

    livecheck do
      url "https://www.wireshark.org/update/0/Wireshark/0.0.0/macOS/#{livecheck_arch}64/en-US/development.xml"
      strategy :sparkle do |items|
        items.map do |item|
          next unless item.minimum_system_version
          next if item.minimum_system_version < :high_sierra ||
                  item.minimum_system_version >= :catalina

          item.version
        end
      end
    end
  end
  on_big_sur :or_newer do
    version "4.4.4"
    sha256 arm:   "24cdce2f5869653b98032e8f6f06a08bd4f4899f178a27eb6d751fc27ac9cb47",
           intel: "46b267bdd78222aa272937a65fa91b09c3755bc0ec01fa52e8b63984699c0afb"

    # This appcast sometimes uses a newer pubDate for an older version, so we
    # have to ignore the default `Sparkle` strategy sorting (which involves the
    # pubDate) and simply work with the version numbers.
    livecheck do
      url "https://www.wireshark.org/update/0/Wireshark/0.0.0/macOS/#{livecheck_arch}64/en-US/stable.xml"
      strategy :sparkle do |items|
        items.map(&:nice_version)
      end
    end
  end

  url "https://2.na.dl.wireshark.org/osx/all-versions/Wireshark%20#{version}%20#{arch}%2064.dmg"
  name "Wireshark"
  desc "Network protocol analyzer"
  homepage "https://www.wireshark.org/"

  auto_updates true
  conflicts_with cask:    "wireshark-chmodbpf",
                 formula: "wireshark"
  depends_on macos: ">= :mojave"

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
  binary "#{appdir}/Wireshark.app/Contents/MacOS/extcap/wifidump"
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
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/wifidump.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man1/wireshark.1"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man4/extcap.4"
  manpage "#{appdir}/Wireshark.app/Contents/Resources/share/man/man4/wireshark-filter.4"

  uninstall early_script: {
              executable:   "/usr/sbin/installer",
              args:         ["-pkg", "#{staged_path}/Remove Wireshark from the system path.pkg", "-target", "/"],
              sudo:         true,
              must_succeed: false,
            },
            launchctl:    "org.wireshark.ChmodBPF",
            pkgutil:      "org.wireshark.*"

  zap trash: [
    "/Library/Application Support/Wireshark",
    "~/.config/wireshark",
    "~/Library/Caches/org.wireshark.Wireshark",
    "~/Library/Cookies/org.wireshark.Wireshark.binarycookies",
    "~/Library/HTTPStorages/org.wireshark.Wireshark",
    "~/Library/HTTPStorages/org.wireshark.Wireshark.binarycookies",
    "~/Library/Preferences/org.wireshark.Wireshark.plist",
    "~/Library/Saved Application State/org.wireshark.Wireshark.savedState",
    "~/Library/WebKit/org.wireshark.Wireshark",
  ]
end

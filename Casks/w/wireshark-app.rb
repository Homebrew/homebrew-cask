cask "wireshark-app" do
  arch arm: "Arm", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x86-"

  on_big_sur :or_older do
    version "4.4.12"
    sha256 arm:   "df982ac0d11858af3841392e727a2ce3907975acade760b381198c30c75304d1",
           intel: "a9290733fa516f54bc7a4e8380b1a55cefd1f88277424f5f6b8c6832c0322ed6"

    url "https://www.wireshark.org/download/osx/all-versions/Wireshark%20#{version}%20#{arch}%2064.dmg"

    # The 4.4.x "old stable release" uses the same appcast as the current stable
    # release but that only includes an item for the current stable release, so
    # we have to check the homepage for the old stable release version.
    livecheck do
      url :homepage
      regex(/Old\s+Stable\s+Release.*?href=["']?[^"' >]*?Wireshark%20v?(\d+(?:\.\d+)+)%20#{arch}%2064\.dmg/im)
    end
  end
  on_monterey :or_newer do
    version "4.6.2"
    sha256 "238af1a676f66a465de3edb6dfb7ce8bed5e91e91b26030f4c1a231982f8d206"

    url "https://www.wireshark.org/download/osx/all-versions/Wireshark%20#{version}.dmg"

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

  name "Wireshark"
  desc "Network protocol analyzer"
  homepage "https://www.wireshark.org/"

  auto_updates true
  conflicts_with cask: "wireshark-chmodbpf"
  depends_on macos: ">= :big_sur"

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

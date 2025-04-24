cask "wsjt-x" do
  version "2.7.0"
  sha256 "f3ef11f3612f1db7bcdea55e5a4ce409b0c1db43ae6bc1a5e048fc99833e031e"

  url "https://downloads.sourceforge.net/wsjt/wsjtx-#{version}/wsjtx-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/wsjt/"
  name "WSJT-X"
  desc "Weak Signal Communication, by K1JT"
  homepage "https://wsjt.sourceforge.io/wsjtx.html"

  livecheck do
    url "https://sourceforge.net/projects/wsjt/rss?path=/"
    regex(%r{url=.*?/wsjtx-?(\d+(?:\.\d+)+)/wsjtx-?(\d+(?:\.\d+)+[a-z]?)-Darwin.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      (match[1] == match[2]) ? match[2] : "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "wsjtx.app"
  installer script: {
    executable: "cp",
    args:       ["#{staged_path}/com.wsjtx.sysctl.plist", "/Library/LaunchDaemons/com.wsjtx.sysctl.plist"],
    sudo:       true,
  }
  installer script: {
    executable: "chown",
    args:       ["root:wheel", "/Library/LaunchDaemons/com.wsjtx.sysctl.plist"],
    sudo:       true,
  }

  uninstall delete: "/Library/LaunchDaemons/com.wsjtx.sysctl.plist"

  caveats do
    reboot
    requires_rosetta
    <<~EOS
      Visit Applications > Utilities > Audio MIDI Setup and select your sound card and then set Format to be '48000Hz 2ch-16bit' for input and output. On rare occasions problems with audio output to your rig can be corrected if you select 44100Hz.

      If your Mac is using Sonoma 14.6 or later then in addition to these two commands you must visit: System Settings > General > Login Items > sysctl and select ON for sysctl or if using Sequioa then visit  System Settings > Privacy & Security then ON for sysctl.
    EOS
  end

  zap trash: [
    "~/Library/Application Support/WSJT-X",
    "~/Library/Preferences/WSJT-X.ini",
  ]

end

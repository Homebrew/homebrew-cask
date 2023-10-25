cask "tunnelblick" do
  version "3.8.8e,5779"
  sha256 "6eeecb9184c7587363bbd16032e9f1d17385f5da6cea9d6229c8127812783493"

  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.csv.first}/Tunnelblick_#{version.csv.first}_build_#{version.csv.second}.1.dmg",
      verified: "github.com/Tunnelblick/Tunnelblick/"
  name "Tunnelblick"
  desc "Free and open-source OpenVPN client"
  homepage "https://www.tunnelblick.net/"

  livecheck do
    url "https://github.com/Tunnelblick/Tunnelblick/releases"
    regex(/Tunnelblick\s+?(\d+(?:\.\d+)*[a-z]?)\s+?\(build\s+?(\d+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  app "Tunnelblick.app"

  uninstall_preflight do
    set_ownership "#{appdir}/Tunnelblick.app"
  end

  uninstall launchctl: [
              "net.tunnelblick.tunnelblick.LaunchAtLogin",
              "net.tunnelblick.tunnelblick.tunnelblickd",
            ],
            delete:    "/Library/Application Support/Tunnelblick",
            quit:      "net.tunnelblick.tunnelblick"

  zap trash: [
    "~/Library/Application Support/Tunnelblick",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Tunnelblick*",
    "~/Library/Caches/net.tunnelblick.tunnelblick",
    "~/Library/Cookies/net.tunnelblick.tunnelblick.binarycookies",
    "~/Library/HTTPStorages/net.tunnelblick.tunnelblick",
    "~/Library/Preferences/net.tunnelblick.tunnelblick.plist",
  ]

  caveats <<~EOS
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end

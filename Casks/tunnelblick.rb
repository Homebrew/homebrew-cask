cask "tunnelblick" do
  version "3.8.7a,5770"
  sha256 "bb5858619a58561d07d23df470b9548b82c1544cea9ffade30c4362dc8f3bd93"

  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.csv.first}/Tunnelblick_#{version.csv.first}_build_#{version.csv.second}.dmg",
      verified: "github.com/Tunnelblick/Tunnelblick/"
  name "Tunnelblick"
  desc "Free and open-source OpenVPN client"
  homepage "https://www.tunnelblick.net/"

  # We need to check all releases since the current latest release is a beta version.
  livecheck do
    url "https://github.com/Tunnelblick/Tunnelblick/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Tunnelblick[._-]v?(\d+(?:\.\d+)*[a-z]?)_build_(\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

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

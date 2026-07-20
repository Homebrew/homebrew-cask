cask "tunnelblick" do
  version "8.0.3,6303"
  sha256 "20c73f78697e4f4baf1c443dff7c494bd9746c9def92b0d5fdb0c1d689d241d7"

  url "https://tunnelblick.net/iprelease/Tunnelblick_#{version.csv.first}_build_#{version.csv.second}.dmg"
  name "Tunnelblick"
  desc "Free and open-source OpenVPN client"
  homepage "https://www.tunnelblick.net/"

  livecheck do
    url "https://tunnelblick.net/appcast-s.rss"
    regex(/^v?(\d+(?:\.\d+)+[a-z]?)\s+\(build\s+(\d+(?:\.\d+)*)\)$/i)
    strategy :sparkle do |item, regex|
      match = item.short_version&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tunnelblick.app"

  uninstall_preflight_steps do
    set_ownership "Tunnelblick.app", base: :appdir
  end

  uninstall launchctl: [
              "net.tunnelblick.tunnelblick.LaunchAtLogin",
              "net.tunnelblick.tunnelblick.tunnelblickd",
            ],
            quit:      "net.tunnelblick.tunnelblick",
            delete:    "/Library/Application Support/Tunnelblick"

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

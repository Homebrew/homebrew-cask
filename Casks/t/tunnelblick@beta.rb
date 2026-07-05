cask "tunnelblick@beta" do
  version "9.0beta07,6460"
  sha256 "27a575a4a612416e483c1e06d55113df575ae36a6a79a9a13bd537c8cd078131"

  url "https://tunnelblick.net/iprelease/Tunnelblick_#{version.csv.first}_build_#{version.csv.second}.dmg"
  name "Tunnelblick"
  desc "Free and open source graphic user interface for OpenVPN"
  homepage "https://www.tunnelblick.net/"

  livecheck do
    url "https://tunnelblick.net/appcast-b.rss"
    regex(/^v?(\d+(?:\.\d+)+[._-]?beta\d+[a-z]?)\s+\(build\s+(\d+(?:\.\d+)*)\)$/i)
    strategy :sparkle do |item, regex|
      match = item.short_version&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tunnelblick.app"

  uninstall_preflight do
    set_ownership "#{appdir}/Tunnelblick.app"
  end

  uninstall launchctl: [
              "net.tunnelblick.tunnelblick.LaunchAtLogin",
              "net.tunnelblick.tunnelblick.tunnelblickd",
            ],
            quit:      "net.tunnelblick.tunnelblick"

  zap trash: [
    "/Library/Application Support/Tunnelblick",
    "~/Library/Application Support/Tunnelblick",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/net.tunnelblick.tunnelblick.help*",
    "~/Library/Caches/net.tunnelblick.tunnelblick",
    "~/Library/Preferences/net.tunnelblick.tunnelblick.plist",
  ]

  caveats <<~EOS
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end

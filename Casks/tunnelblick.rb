cask "tunnelblick" do
  version "3.8.6a,5711"
  sha256 "636c52eaba89a0fc7549160892fabb62f4d11bb34d959872f2c0ab93765e0835"

  url "https://github.com/Tunnelblick/Tunnelblick/releases/download/v#{version.before_comma}/Tunnelblick_#{version.before_comma}_build_#{version.after_comma}.dmg",
      verified: "github.com/Tunnelblick/Tunnelblick/"
  name "Tunnelblick"
  desc "Free and open-source OpenVPN client"
  homepage "https://www.tunnelblick.net/"

  # We need to check all releases since the current latest release is a beta version.
  livecheck do
    url "https://github.com/Tunnelblick/Tunnelblick/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Tunnelblick_(\d+(?:\.\d+)*[a-z]?)_build_(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
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
            quit:      "net.tunnelblick.tunnelblick"

  zap trash: [
    "~/Library/Application Support/Tunnelblick",
    "~/Library/Caches/net.tunnelblick.tunnelblick",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Tunnelblick*",
    "~/Library/Cookies/net.tunnelblick.tunnelblick.binarycookies",
    "~/Library/Preferences/net.tunnelblick.tunnelblick.plist",
    "/Library/Application Support/Tunnelblick",
  ]

  caveats <<~EOS
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end

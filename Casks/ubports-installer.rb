cask "ubports-installer" do
  version "0.9.7-beta"
  sha256 "0800c9151d7abbd207404644ae4707f20d9b487586b0184952566cabc01f4dda"

  url "https://github.com/ubports/ubports-installer/releases/download/#{version}/ubports-installer_#{version}_mac_x64.dmg",
      verified: "github.com/ubports/ubports-installer/"
  name "ubports-installer"
  desc "Application to install ubports on mobile devices"
  homepage "https://ubports.com/"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+(?:-beta)?)["' >]}i)
    strategy :github_latest
  end

  app "ubports-installer.app"

  zap trash: [
    "~/Library/Application Support/ubports-installer",
    "~/Library/Preferences/com.ubports.installer.plist",
    "~/Library/Saved Application State/com.ubports.installer.savedState",
  ]
end

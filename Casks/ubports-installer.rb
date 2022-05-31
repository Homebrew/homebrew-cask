cask "ubports-installer" do
  version "0.9.5-beta"
  sha256 "178ed0bd936888ec6512de3cfe5ff20041a7cd92a507334d85d9873b2256dae6"

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

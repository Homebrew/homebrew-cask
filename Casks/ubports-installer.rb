cask "ubports-installer" do
  version "0.9.10"
  sha256 "214c5ddaef120fe56653e6212652f2db86aee750879d092c40773aeb57d73308"

  url "https://github.com/ubports/ubports-installer/releases/download/#{version}/ubports-installer_#{version}-beta_mac_x64.dmg",
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

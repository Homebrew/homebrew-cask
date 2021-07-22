cask "ubports-installer" do
  version "0.8.8-beta"
  sha256 "57b296031cf7d2f72384d7b43e336a5b629ef01e3af9afbd7b8a3a622c6c8bf9"

  url "https://github.com/ubports/ubports-installer/releases/download/#{version}/ubports-installer_#{version}_mac.dmg",
      verified: "github.com/ubports/ubports-installer/"
  name "ubports-installer"
  desc "Application to install ubports on mobile devices"
  homepage "https://ubports.com/"

  livecheck do
    url "https://github.com/ubports/ubports-installer/releases"
    strategy :page_match
    regex(%r{href=.*?/ubports-installer_(\d+(?:\.\d+)*(?:-beta)?)_mac\.dmg}i)
  end

  app "ubports-installer.app"

  zap trash: [
    "~/Library/Application Support/ubports-installer",
    "~/Library/Preferences/com.ubports.installer.plist",
    "~/Library/Saved Application State/com.ubports.installer.savedState",
  ]
end

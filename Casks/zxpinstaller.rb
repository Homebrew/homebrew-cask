cask "zxpinstaller" do
  version "1.6.3"
  sha256 "f9ffa59008030f1e73bc7f7d99b5aac0c5fed94b2c8d6ba6de35e5e6edb8d11a"

  url "https://github.com/guideguide/ZXPInstaller/releases/download/#{version}/ZXPInstaller.dmg",
      verified: "github.com/guideguide/ZXPInstaller/"
  name "ZXPInstaller"
  desc "Adobe extensions installer"
  homepage "https://zxpinstaller.com/"

  app "ZXPInstaller.app"

  zap trash: "~/Library/Preferences/com.electron.zxpinstaller.plist"
end

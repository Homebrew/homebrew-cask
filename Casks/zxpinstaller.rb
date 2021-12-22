cask "zxpinstaller" do
  version "1.8.2"
  sha256 "0d42ee30105096529bc89394c67733069c56b2139fd09dea69944d7e188f0972"

  url "https://github.com/guideguide/ZXPInstaller/releases/download/v#{version}/ZXPInstaller-#{version}.dmg",
      verified: "github.com/guideguide/ZXPInstaller/"
  name "ZXPInstaller"
  desc "Adobe extensions installer"
  homepage "https://zxpinstaller.com/"

  app "ZXPInstaller.app"

  zap trash: "~/Library/Preferences/com.electron.zxpinstaller.plist"
end

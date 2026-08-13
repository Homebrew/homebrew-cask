cask "vcamapp" do
  version "0.15.0"
  sha256 "d0be73b8fd7e89770c879f6524c06b275cfad7b631819c16d5cc914cd8cd53a5"

  url "https://github.com/vcamapp/app/releases/download/#{version}/VCam.#{version}.dmg",
      verified: "github.com/vcamapp/app/"
  name "VCam"
  desc "Face-tracking virtual avatar app"
  homepage "https://vcamapp.com/en"

  depends_on macos: :sequoia

  app "VCam.app"

  uninstall quit: "com.github.tattn.VCam"

  zap trash: [
    "~/Library/Application Support/com.github.tattn.VCam",
    "~/Library/Caches/com.github.tattn.VCam",
    "~/Library/HTTPStorages/com.github.tattn.VCam",
    "~/Library/Preferences/*.com.github.tattn.VCam.keychain.plist",
    "~/Library/Preferences/com.github.tattn.VCam.plist",
  ]
end

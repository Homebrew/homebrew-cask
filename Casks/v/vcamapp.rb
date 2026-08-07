cask "vcamapp" do
  version "0.14.5"
  sha256 "08b40d5354e8bc5afe1bfea557ebd75559cf5145b575bea412fd79a543df0b32"

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

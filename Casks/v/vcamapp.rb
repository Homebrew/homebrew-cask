cask "vcamapp" do
  version "0.14.4"
  sha256 "07637365c854fb119b68be0d6cef1aa33cb9850ebc5e76503be8d4ed29a1e0f0"

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

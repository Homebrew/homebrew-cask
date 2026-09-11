cask "vcamapp" do
  version "0.15.3"
  sha256 "ea612993b4b0abbc214895973e7a290b45add7fb4c2fd34d66811830770e6045"

  url "https://github.com/vcamapp/app/releases/download/#{version}/VCam.#{version}.dmg"
  name "VCam"
  desc "Face-tracking virtual avatar app"
  homepage "https://vcamapp.com/en"

  livecheck do
    url :url
    strategy :github_latest
  end

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

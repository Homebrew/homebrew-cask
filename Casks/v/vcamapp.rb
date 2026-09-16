cask "vcamapp" do
  version "0.15.5"
  sha256 "dc913671d0421b8f35604d885237b2caaab9713457fc1b6aa149a8ad85b00e4a"

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

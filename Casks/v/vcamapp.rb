cask "vcamapp" do
  version "0.15.1"
  sha256 "ca734bf53df0e2dca99acefacf17ae23efc5b4e27be5bccd516df58a870222c3"

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

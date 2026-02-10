cask "vcamapp" do
  version "0.13.3"
  sha256 "62afb27f3c7c7968c5f9069cba841cdbd9292e1020c433ebdc4a0109dd5b78c6"

  url "https://github.com/vcamapp/app/releases/download/#{version}/VCam.#{version}.dmg",
      verified: "github.com/vcamapp/app/"
  name "VCam"
  desc "Face-tracking virtual avatar app"
  homepage "https://vcamapp.com/en"

  depends_on macos: ">= :sonoma"

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

cask "upscayl" do
  version "2.9.8"
  sha256 "39946611bed5fbbf860efd21b69bb8d345eb9d7897ec38c3d4c704880180731a"

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-mac.dmg",
      verified: "github.com/upscayl/upscayl/"
  name "upscayl"
  desc "Open Source AI Image Upscaler built with Linux-First philosophy"
  homepage "https://upscayl.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Upscayl.app"

  zap trash: [
    "~/Library/Application Support/Upscayl",
    "~/Library/Preferences/org.upscayl.app.plist",
    "~/Library/Saved Applicatrtjion State/org.upscayl.app.savedState",
  ]
end

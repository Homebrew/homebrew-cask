cask "upscayl" do
  version "2.0.1"
  sha256 "13ccea5608c1e5bf88035b6614b86b00b910b6d7567a99a236b01ac10b0ef9a1"

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-mac.dmg",
      verified: "github.com/upscayl/upscayl/"
  name "upscayl"
  desc "Open Source AI Image Upscaler built with Linux-First philosophy"
  homepage "https://upscayl.github.io/"

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

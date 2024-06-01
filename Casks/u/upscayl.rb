cask "upscayl" do
  version "2.11.5"
  sha256 "abf7b625641560cfa180dd1b2b0864138559d29f2a3d0f9951e5034496ce8dac"

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-mac.dmg",
      verified: "github.com/upscayl/upscayl/"
  name "Upscayl"
  desc "AI image upscaler"
  homepage "https://upscayl.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Upscayl.app"

  zap trash: [
    "~/Library/Application Support/Upscayl",
    "~/Library/Preferences/org.upscayl.app.plist",
    "~/Library/Saved Application State/org.upscayl.app.savedState",
  ]
end

cask "whalebird" do
  arch arm: "arm64", intel: "x64"

  version "5.0.4"
  sha256 arm:   "8a2b174392e63d9244f8fa6f32d2033e8f91ed4c24510dbe8df44578e09cc31f",
         intel: "c8fd297d9e217c26743a482870ff3168ea6ddf30770d70205ad2a1ee14107c01"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/v#{version}/Whalebird-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  name "Whalebird"
  desc "Mastodon, Pleroma, and Misskey client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"

  zap trash: [
    "~/Library/Application Support/Whalebird",
    "~/Library/Logs/Whalebird",
    "~/Library/Preferences/social.whalebird.app.plist",
    "~/Library/Saved Application State/social.whalebird.app.savedState",
  ]
end

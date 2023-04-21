cask "whalebird" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3"
  sha256 arm:   "a9af7233193c80a64ff313bd89e5c00752646cfa034493b359cce2db93b2721d",
         intel: "2e8bd5fd403c06c99c834cc3adbb5e6b443e40f6105167449df79f44def9bcc3"

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

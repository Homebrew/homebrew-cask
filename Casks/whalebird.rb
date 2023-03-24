cask "whalebird" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "b35f47bb5719b77eabfcba9d1e0af72813a6536cc48fe88b6b533a412c0d0646",
         intel: "72e0f2a1f9ea7a9e5759237c1b3fe0dd836918187e08054f376da2379bc8957c"

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

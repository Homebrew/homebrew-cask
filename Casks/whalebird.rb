cask "whalebird" do
  arch arm: "arm64", intel: "x64"

  version "5.0.6"
  sha256 arm:   "e3b5c9285efc9b2f12a74dcc79e76c0d19a95a481ef57172172a04bf27a3656a",
         intel: "b595e1ccef6af020568f4664079e7449717c9388cc3ba550a3042026cc1fd921"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/v#{version}/Whalebird-#{version}-mac-#{arch}.dmg",
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

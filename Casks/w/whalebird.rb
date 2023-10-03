cask "whalebird" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "17135f331d5a453778c0451dbe03cc86b7e8215190d1348bf8d8b8abec669990",
         intel: "8a3870540eb525d0d8d8bd93ef216c405b3230bb7067838daf3c528f03d40b13"

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

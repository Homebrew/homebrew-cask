cask "whalebird" do
  arch arm: "arm64", intel: "x64"

  version "5.0.5"
  sha256 arm:   "72e7d9bfffe5636b9d80ae8ad7f72d553494a4b1814af0b32943dc031dca27ea",
         intel: "54009176ff7853faf69649b84079b31d1971667de988b33dbb24598c33560b76"

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

cask "tweeten" do
  version "5.4.0"
  sha256 "817e046c120368565bb1a186bb21d65b51f388decd37710ca609dfd6bcdee5f2"

  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip",
      verified: "github.com/MehediH/Tweeten/"
  name "Tweeten"
  desc "Twitter client"
  homepage "https://tweetenapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tweeten.app"

  zap trash: [
    "~/Library/Application Support/Tweeten",
    "~/Library/Logs/Tweeten",
    "~/Library/Preferences/com.builtbymeh.tweeten.plist",
    "~/Library/Saved Application State/com.builtbymeh.tweeten.savedState",
  ]
end

cask "tweeten" do
  version "5.2.1"
  sha256 "06618a73738d3c2487a7ad7e123b99c3dbb2c2753f74d2afcf726610a61c3e9d"

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

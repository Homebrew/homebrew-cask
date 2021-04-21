cask "tweeten" do
  version "5.3.0"
  sha256 "b894797844c70b1e356f213b30da00076dd25799888da37ab81ed65307fa7034"

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

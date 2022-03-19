cask "tweeten" do
  version "5.5.0"
  sha256 "6df21779492c2b3abbddb26a6548d81f32d885f8087fa32e7ff5869ae9543971"

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

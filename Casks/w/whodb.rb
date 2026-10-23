cask "whodb" do
  version "0.136.0"
  sha256 "a202a8788dbc31c7a59243e832c7370907b7f3ac6a51887757fc08f572bd0c19"

  url "https://github.com/clidey/whodb/releases/download/#{version}/whodb.dmg"
  name "WhoDB"
  desc "Database management tool with AI-powered features"
  homepage "https://github.com/clidey/whodb"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "WhoDB.app"

  zap trash: [
    "~/Library/Application Support/whodb",
    "~/Library/Caches/com.clidey.whodb",
    "~/Library/Preferences/com.clidey.whodb.plist",
    "~/Library/Saved Application State/com.clidey.whodb.savedState",
    "~/Library/WebKit/com.clidey.whodb",
  ]
end

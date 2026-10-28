cask "whodb" do
  version "0.138.0"
  sha256 "4efeba634f9c66eeb153ae84a2c63ad2963312bc47799eb19a921defa603f51c"

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

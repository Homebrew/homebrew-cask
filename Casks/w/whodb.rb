cask "whodb" do
  version "0.122.0"
  sha256 "faeb7a5590b87a8b69b266040458141e3ad2a4082c8e3f39f6e09f5cbd14592e"

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
    "~/Library/Preferences/com.clidey.whodb.plist",
    "~/Library/Saved Application State/com.clidey.whodb.savedState",
  ]
end

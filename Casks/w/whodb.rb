cask "whodb" do
  version "0.106.0"
  sha256 "2dd9a552a7ff42554fc5a879523fdedd0c21167e2aa2832884e5cd0b81fd89ea"

  url "https://github.com/clidey/whodb/releases/download/#{version}/whodb.dmg"
  name "WhoDB"
  desc "Database management tool with AI-powered features"
  homepage "https://github.com/clidey/whodb"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WhoDB.app"

  zap trash: [
    "~/Library/Application Support/whodb",
    "~/Library/Preferences/com.clidey.whodb.plist",
    "~/Library/Saved Application State/com.clidey.whodb.savedState",
  ]
end

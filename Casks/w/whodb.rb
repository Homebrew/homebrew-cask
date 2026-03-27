cask "whodb" do
  version "0.103.0"
  sha256 "88b74801526ca73d841be49029d4ff0b199a1885bab79686f229a641e1182228"

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

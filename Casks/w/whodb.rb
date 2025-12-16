cask "whodb" do
  version "0.85.0"
  sha256 "e8248cff5b497c265c1ef8e9a0e9b9a47f8096a8fdafa54c8e2085ed61112fd6"

  url "https://github.com/clidey/whodb/releases/download/#{version}/whodb.dmg"
  name "WhoDB"
  desc "Database management tool with AI-powered features"
  homepage "https://github.com/clidey/whodb"

  app "WhoDB.app"

  zap trash: [
    "~/Library/Application Support/whodb",
    "~/Library/Preferences/com.clidey.whodb.plist",
    "~/Library/Saved Application State/com.clidey.whodb.savedState",
  ]
end

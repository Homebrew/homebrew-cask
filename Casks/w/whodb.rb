cask "whodb" do
  version "0.73.0"
  sha256 "98c8c6834139697739cdfd177ae021bbc7ab3485f4348ddf74adec1d985f5c16"

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

  caveats do
    "WhoDB documentation is available at https://docs.whodb.com."
  end
end

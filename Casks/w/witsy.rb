cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.3.2"
  sha256 arm:   "dbfcf4a8d02c94e3a3100aea270b5ff6afdeafc887b6407ac5b4d66eb133a522",
         intel: "a8c3e72517619cd5e564757189eb7fa0e4da9c7558222a939f2a73e025182a64"

  url "https://github.com/nbonamy/witsy/releases/download/v#{version}/Witsy-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/nbonamy/witsy/"
  name "Witsy"
  desc "BYOK (Bring Your Own Keys) AI assistant"
  homepage "https://witsyai.com/"

  livecheck do
    url "https://update.electronjs.org/nbonamy/witsy/darwin-#{arch}/0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Witsy.app"

  zap trash: [
    "~/Library/Application Support/Witsy",
    "~/Library/Logs/Witsy",
  ]
end

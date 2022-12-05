cask "thedesk" do
  arch arm: "arm64", intel: "x64"

  version "23.0.2"
  sha256 arm:   "f80489d3e50237bcab4b010da55f549643b94789804c22a82cf7437046b6d888",
         intel: "917d5b1eddd33ac2a09d21df0f8e14ca8aabf9f70353539c51d7418212a8f283"

  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}-#{arch}.dmg",
      verified: "github.com/cutls/TheDesk/"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TheDesk.app"

  zap trash: [
    "~/Library/Application Support/thedesk",
    "~/Library/Preferences/top.thedesk.plist",
    "~/Library/Saved Application State/top.thedesk.savedState",
  ]
end

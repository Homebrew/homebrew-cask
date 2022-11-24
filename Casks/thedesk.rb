cask "thedesk" do
  arch arm: "arm64", intel: "x64"

  version "23.0.1"
  sha256 arm:   "a41189097769a589a83f521c1ef7d73e80733e082bd407d2a15d75998328826d",
         intel: "287586d97f2318cc83c32d1f85cbf8f8db9777763197d2f11dbc70bfc66c9497"

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

cask "thedesk" do
  version "24.0.8"
  sha256 "be9544a4e39aa41241976c97c56a6a9d9ee8afb89ee02c98016b2861c5773d50"

  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}-universal.dmg",
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

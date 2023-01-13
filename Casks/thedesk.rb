cask "thedesk" do
  version "23.0.5"
  sha256 "88e089902e377c02a44998e4fb13687b6ce60e44918eed31afd2f94b49daa104"

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

cask "thedesk" do
  version "24.0.3"
  sha256 "8886cf187b64ef75257094b625f0d94927a8b3dff0b7b5b24f72a398c6bd14bd"

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

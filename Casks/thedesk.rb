cask "thedesk" do
  version "22.3.0"
  sha256 "2d8f6aa4e21d034c5f3bd80fc448bb9c84bce4c649ef7186736064690e73d4e7"

  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg",
      verified: "github.com/cutls/TheDesk/"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TheDesk.app"
end

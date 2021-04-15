cask "thedesk" do
  version "22.1.1"
  sha256 "5ab424c86f84e47efa85248d0a2cea0c46837f02d07d4d660d663db216420145"

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

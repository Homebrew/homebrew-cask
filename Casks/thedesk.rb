cask "thedesk" do
  version "22.1.0"
  sha256 "4a1884025f8b1c5b25ff635c53c505f8ff4b507910077552a5aafa721a15693f"

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

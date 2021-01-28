cask "thedesk" do
  version "22.0.1"
  sha256 "03e53978dc69f50178203891979024b795d7d0d6fbf84db3ff43477a4d347ab7"

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

cask "thedesk" do
  version "22.2.0"
  sha256 "acbb039a15ff3d3030552189457b7835f6945731b1ec6c664dd2b838acd9b6e4"

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

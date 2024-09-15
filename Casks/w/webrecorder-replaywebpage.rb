cask "webrecorder-replaywebpage" do
  version "2.1.4"
  sha256 "e67db03fc107879c3fe4a028d421a4a48b09d26463ec88fc4a339af3ed196eef"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
  name "ReplayWeb.page"
  desc "Web archive viewer for WARC and WACZ files"
  homepage "https://replayweb.page/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "ReplayWeb.page.app"

  zap trash: [
    "~/Library/Application Support/ReplayWeb.page",
    "~/Library/Logs/ReplayWeb.page",
    "~/Library/Preferences/net.webrecorder.replaywebpage.plst",
    "~/Library/Saved Application State/net.webrecorder.replaywebpage.savedState",
  ]
end

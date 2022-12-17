cask "thedesk" do
  arch arm: "arm64", intel: "x64"

  version "23.0.3"
  sha256 arm:   "55475f5574dff5c3ca73a561c15951527551da47ba977f4c3f2a6d6540389601",
         intel: "a69be8db2f3f9ea84a1b5ad31ea91730008aa193728ae15731784ee4ced8378c"

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

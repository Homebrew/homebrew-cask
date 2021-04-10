cask "tastyworks" do
  version "1.12.2"
  sha256 "3729eacbefefcd3b9a085f8bb6b8d5bad4333969d63deecb82b3c4c0e983eff5"

  url "https://download.tastyworks.com/desktop-#{version.major}.x.x/#{version}/tastyworks-#{version}.dmg"
  name "tastyworks"
  desc "Desktop trading platform for the tastyworks brokerage"
  homepage "https://tastyworks.com/"

  livecheck do
    url "https://tastyworks.freshdesk.com/support/solutions/articles/43000435186-recent-release-notes"
    strategy :page_match
    regex(%r{href=.*?/tastyworks-(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true

  app "tastyworks.app"

  zap trash: [
    "~/Library/Application Support/tastyworks",
    "~/Library/Saved Application State/com.tastyworks.desktop.savedState",
  ]
end

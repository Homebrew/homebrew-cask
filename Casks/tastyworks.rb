cask "tastyworks" do
  version "1.9.1"
  sha256 "0a8ec7819a559641365164b49f79bb09e73948808a59ae9fc9f408473499bcc8"

  url "https://download.tastyworks.com/desktop-#{version.major}.x.x/#{version}/tastyworks-#{version}.dmg"
  appcast "https://tastyworks.freshdesk.com/support/solutions/articles/43000435186-recent-release-notes",
          must_contain: version.major_minor
  name "tastyworks"
  homepage "https://tastyworks.com/"

  auto_updates true

  app "tastyworks.app"

  zap trash: [
    "~/Library/Application Support/tastyworks",
    "~/Library/Saved Application State/com.tastyworks.desktop.savedState",
  ]
end

cask "tastyworks" do
  version "1.10.0"
  sha256 "111ddded882be3a244cd560c9b3cf2303cc98347ae5dfb95aa38f00dd0ecb492"

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

cask "tastyworks" do
  version "1.12.0"
  sha256 "0d799bb36a82954a970087052eb092172edf6e5b79d0d6868db14d30bd3df12a"

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

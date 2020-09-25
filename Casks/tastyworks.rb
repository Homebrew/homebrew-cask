cask "tastyworks" do
  version "1.9.2"
  sha256 "150461de5759a3584e35e53d091cad553534150c52ed70c61ffe9e9530dd83f2"

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

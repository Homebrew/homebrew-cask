cask "tastyworks" do
  version "1.11.0"
  sha256 "8f6ecdfc906e73790f173fcb4519096a3ba4fa53797d2941f1cd93eb86794697"

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

cask "tastyworks" do
  version "1.22.0"
  sha256 "e7e56d8aed91594c6259f47fffb0326c3ca7bda2eb0ad2a10c487d819b11ee26"

  url "https://download.tastyworks.com/desktop-#{version.major}.x.x/#{version}/tastyworks-#{version}.dmg"
  name "tastyworks"
  desc "Desktop trading platform for the tastyworks brokerage"
  homepage "https://tastyworks.com/"
  
  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "tastyworks.app"

  zap trash: [
    "~/Library/Application Support/tastyworks",
    "~/Library/Saved Application State/com.tastyworks.desktop.savedState",
  ]
end

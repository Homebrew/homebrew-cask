cask "tastyworks" do
  version "1.26.1"
  sha256 "6860c20aadb5a3c203260c5a1616cfec76849100b68fa6f26dd94e5edc24484b"

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

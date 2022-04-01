cask "tastyworks" do
  version "1.14.2"
  sha256 "09dec162db321904a25d196134da699dc7d79a1c17fa7134d81fc11677802f1b"

  url "https://download.tastyworks.com/desktop-#{version.major}.x.x/#{version}/tastyworks-#{version}.dmg"
  name "tastyworks"
  desc "Desktop trading platform for the tastyworks brokerage"
  homepage "https://tastyworks.com/"

  livecheck do
    url "https://tastyworks.com/component---src-pages-technology-js-c0073caebcf082ded47f.js"
    regex(%r{/tastyworks-(\d+(?:\.\d+)*)}i)
  end

  auto_updates true

  app "tastyworks.app"

  zap trash: [
    "~/Library/Application Support/tastyworks",
    "~/Library/Saved Application State/com.tastyworks.desktop.savedState",
  ]
end

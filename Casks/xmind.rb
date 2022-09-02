cask "xmind" do
  version "22.08.2196"
  sha256 "3db92b44efad4fdaed73d82685620b053e558b3c47e074a5f24fcbe2fe802e50"

  url "https://dl3.xmind.net/Xmind-for-macOS-#{version}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://www.xmind.net/zen/download/mac/"
    strategy :header_match
    regex(/XMind[._-]for[._-]macOS[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  conflicts_with cask: "homebrew/cask-versions/xmind8"

  app "XMind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end

cask "xmind" do
  version "12.0.3-202206241746"
  sha256 "5d103542849310d4cccb44d06482c46e4a44dbde8fb861587aad967d5cd1ff0b"

  url "https://dl3.xmind.net/XMind-for-macOS-#{version}.dmg"
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

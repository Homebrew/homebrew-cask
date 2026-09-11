cask "xmind" do
  version "26.05.01107-202609082317"
  sha256 "5b186c371cd8f27958b6c2d93037c880c34a38108715de84df139f8d7141c630"

  url "https://dl3.xmind.net/Xmind-for-macOS-#{version}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://www.xmind.net/zen/download/mac/"
    regex(/XMind[._-]for[._-]macOS[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match
  end

  conflicts_with cask: "xmind@beta"
  depends_on :macos

  app "Xmind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end

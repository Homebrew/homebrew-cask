cask "xmind" do
  version "24.01.14361-202403131847"
  sha256 "4ef4f6437f27cf3f29fbd2481a6d8563aa681b9a47ceaf30051583c61fa72a77"

  url "https://dl3.xmind.net/Xmind-for-macOS-#{version}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://www.xmind.net/zen/download/mac/"
    regex(/XMind[._-]for[._-]macOS[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match
  end

  conflicts_with cask: "xmind8"

  app "Xmind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end

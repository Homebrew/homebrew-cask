cask "xmind" do
  version "22.10.0927"
  sha256 "a6f4317c7c885af05aa493935024941118720462fd5e2ac50745f223604ee53b"

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

  app "Xmind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end

cask "xmind" do
  version "22.11.2677"
  sha256 "c0edadc83dc1a79233eaf1e42dd1bf68ecf1c6fa035ae0879efbcdb224d27653"

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

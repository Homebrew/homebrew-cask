cask "xmind" do
  version "12.0.2-202204260739"
  sha256 "14ff55139fc847c8950bfa5bd5ac9688f81734d4b6f04af12fb7f8804143c88f"

  url "https://dl3.xmind.net/XMind-for-macOS-#{version}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://www.xmind.net/zen/download/mac/"
    strategy :header_match
    regex(/XMind[._-]for[._-]macOS[._-]v?(\d+(?:.\d+)+)\.dmg/i)
  end
    
  app "XMind.app"

  zap trash: [
    "~/Library/XMind",
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
  ]
end

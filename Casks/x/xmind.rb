cask "xmind" do
  version "24.12.04124-202412250704"
  sha256 "fe51733e6012b94b902233f74890da4d8e808bc5dd3432ca11bc95a70d81c18f"

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

  app "Xmind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end

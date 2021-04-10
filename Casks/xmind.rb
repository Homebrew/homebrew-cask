cask "xmind" do
  version "3.7.9.201912052356,8-update9"
  sha256 "120745d98a6122af56f944f666c59a6c3e06099be3838c365e6554e82db19211"

  url "https://dl3.xmind.net/xmind-#{version.after_comma}-macosx.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://www.xmind.net/download/xmind8/"
    strategy :page_match
    regex(%r{href=.*?/xmind-(\d+(?:\.\d+)*)-macosx\.dmg}i)
  end

  app "XMind.app"

  zap trash: [
    "~/Library/XMind",
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
  ]
end

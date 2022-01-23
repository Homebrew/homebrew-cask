cask "xmind" do
  version "3.7.9.201912052356,8-update9"
  sha256 "120745d98a6122af56f944f666c59a6c3e06099be3838c365e6554e82db19211"

  url "https://dl3.xmind.net/xmind-#{version.csv.second}-macosx.dmg"
  appcast "https://www.xmind.net/download/xmind8/",
          must_contain: version.csv.second
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  app "XMind.app"

  zap trash: [
    "~/Library/XMind",
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
  ]
end

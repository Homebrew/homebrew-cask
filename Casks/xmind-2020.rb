cask "xmind-2020" do
  version "10.2.1"
  sha256 "a41f8647ef655e19e4a8066746475be95fd13b501c9fa09cc81abadb1da29580"

  url "https://dl3.xmind.net/XMind-2020-for-macOS-10.2.1-202007271856.dmg"
  name "Xmind 2020"
  desc "Full-featured mindmap software"
  homepage "https://www.xmind.net/xmind2020/"

  auto_updates true
  conflicts_with cask: "xmind"

  app "XMind.app"
end

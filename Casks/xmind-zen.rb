cask "xmind-zen" do
  version "10.2.1-202007271856"
  sha256 "a41f8647ef655e19e4a8066746475be95fd13b501c9fa09cc81abadb1da29580"

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast "https://www.xmind.net/download/"
  name "XMind"
  desc "Brainstorming and mind mapping app"
  homepage "https://www.xmind.net/zen/"

  app "XMind.app"

  zap trash: "~/Library/Application Support/XMind ZEN"
end

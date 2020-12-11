cask "xmind-zen" do
  version "10.2.1-202007271856"
  sha256 "a41f8647ef655e19e4a8066746475be95fd13b501c9fa09cc81abadb1da29580"

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast "https://www.xmind.net/download/"
  name "Xmind 2020"
  desc "Mindmap and brainstorming app"
  homepage "https://www.xmind.net/xmind2020/"

  auto_updates true
  conflicts_with cask: "xmind"

  app "XMind.app"

  zap trash: "~/Library/Application Support/XMind ZEN"

  caveat <<~EOS
    Internally, Xmind Zen is now Xmind 2020. See their announcement:

      https://www.xmind.net/blog/en/xmind%3A-zen-is-now-xmind%3A-2020/
  EOS
end

cask "xmind-zen" do
  version "10.3.0-202012160502"
  sha256 "f13405f9e0496de93cfa01c1e48576e34ab47dd43a7875fe2572f565d7a8b928"

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast "https://www.xmind.net/download/"
  name "Xmind 2020"
  desc "Mindmap and brainstorming app"
  homepage "https://www.xmind.net/xmind2020/"

  auto_updates true
  conflicts_with cask: "xmind"

  app "XMind.app"

  zap trash: "~/Library/Application Support/XMind ZEN"

  caveats <<~EOS
    Internally, Xmind Zen is now Xmind 2020. See their announcement:

      https://www.xmind.net/blog/en/xmind%3A-zen-is-now-xmind%3A-2020/
  EOS
end

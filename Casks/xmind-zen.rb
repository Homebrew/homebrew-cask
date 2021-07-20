cask "xmind-zen" do
  version "11.0.2-202107130052"
  sha256 "9db992c0df7bca0767aaa5da17dba87dce4b73c9db5c53b88dc6c37ee14780f5"

  url "https://dl3.xmind.net/XMind-for-macOS-#{version}.dmg"
  name "XMind"
  desc "Mindmap and brainstorming app"
  homepage "https://www.xmind.net/desktop/"

  livecheck do
    url "https://www.xmind.net/zen/download/mac/"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "xmind"
  depends_on macos: ">= :el_capitan"

  app "XMind.app"

  zap trash: "~/Library/Application Support/XMind ZEN"

  caveats <<~EOS
    Internally, Xmind Zen is now Xmind 2020. See their announcement:

      https://www.xmind.net/blog/en/xmind%3A-zen-is-now-xmind%3A-2020/
  EOS
end

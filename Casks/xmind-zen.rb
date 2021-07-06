cask "xmind-zen" do
  version "11.0.1-202106020102"
  sha256 "fcf793350f70d77bdae6ebfcf645111bc6f35b8f0c3344389704baa61144d35e"

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

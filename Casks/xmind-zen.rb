cask "xmind-zen" do
  version "11.1.2,202111071943"
  sha256 "923ca09d1b81435088680179c50f73bb27342b2a5e97e16d0daaa0433aea5de3"

  url "https://dl3.xmind.net/XMind-for-macOS-#{version.csv.first}-#{version.csv.second}.dmg"
  name "XMind"
  desc "Mindmap and brainstorming app"
  homepage "https://www.xmind.net/desktop/"

  livecheck do
    url "https://www.xmind.net/zen/download/mac/"
    regex(/[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["location"].match(regex)&.then { |match| "#{match[1]},#{match[2]}" }
    end
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

cask "xmind-zen" do
  version "12.0.2,202204260739"
  sha256 "14ff55139fc847c8950bfa5bd5ac9688f81734d4b6f04af12fb7f8804143c88f"

  url "https://dl3.xmind.net/XMind-for-macOS-#{version.csv.first}-#{version.csv.second}.dmg"
  name "XMind"
  desc "Mindmap and brainstorming app"
  homepage "https://www.xmind.net/"

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

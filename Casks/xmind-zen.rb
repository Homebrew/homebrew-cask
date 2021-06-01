cask "xmind-zen" do
  version "2021,11.0.0-202105270022"
  sha256 "220b7fda61704ca22444edec6fdd1c576d1123206624133d580b7607e751d87e"

  url "https://dl3.xmind.net/XMind-#{version.before_comma}-for-macOS-#{version.after_comma}.dmg"
  name "XMind"
  name "XMind (#{version.before_comma})"
  desc "Mindmap and brainstorming app"
  homepage "https://www.xmind.net/desktop/"

  livecheck do
    url "https://www.xmind.net/zen/download/mac/"
    strategy :header_match do |headers|
      match = headers["location"].match(/XMind[._-](\d+)[._-]for[._-]macOS[._-]v?(\d+(?:\.\d+)+[_-]\d+)\.dmg/i)
      "#{match[1]},#{match[2]}"
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

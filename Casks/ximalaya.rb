cask "ximalaya" do
  version "1.7.1,1611898412"
  sha256 "c7a3f7ec20ca66d164ca91dd116d83c0c653107b0c05cf51085623fab0a0271f"

  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/#{version.before_comma}/download/Ximalaya-#{version.before_comma}_#{version.after_comma}.dmg",
      verified: "s1.xmcdn.com/"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  livecheck do
    url "https://www.ximalaya.com/down/lite?client=mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Ximalaya-(\d+(?:\.\d+)*)_(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "喜马拉雅.app"
end

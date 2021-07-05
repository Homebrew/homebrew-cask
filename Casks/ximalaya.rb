cask "ximalaya" do
  version "1.9.4,1624345812"
  sha256 "f0cd9ca9b9efe9199084dd0d19ae5432a1e08a4eb18fc3a051f83b0de2d6ea3b"

  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/#{version.before_comma}/download/mac-x64/Ximalaya_#{version.before_comma}_#{version.after_comma}.dmg",
      verified: "s1.xmcdn.com/"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  livecheck do
    url "https://www.ximalaya.com/down/lite?client=mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Ximalaya[_-](\d+(?:\.\d+)*)[_-](\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "喜马拉雅.app"
end

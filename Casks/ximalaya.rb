cask "ximalaya" do
  version "1.7.2,1612260136"
  sha256 "071cfbfd048f580114932bd2d62fab54bf67236190887e91c95e0a8204bda302"

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

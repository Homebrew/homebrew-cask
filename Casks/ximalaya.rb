cask "ximalaya" do
  version "2.0.2,1631593987"
  sha256 "78e41277684e97e3c4956ee955451ef1551a74b56964e4ec1540ca62e01da1e8"

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

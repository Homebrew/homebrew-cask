cask "ximalaya" do
  version "2.2.0,1637833363"
  sha256 "08683899b2ae0b633063607e8cc117126ca4940a360b0c590e0cdb75db3493fe"

  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/#{version.before_comma}/download/mac-x64/Ximalaya_#{version.before_comma}_#{version.after_comma}.dmg",
      verified: "s1.xmcdn.com/"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  livecheck do
    url "https://www.ximalaya.com/down/lite?client=mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Ximalaya[_-](\d+(?:\.\d+)+)[_-](\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "喜马拉雅.app"
end

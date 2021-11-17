cask "ximalaya" do
  version "2.1.1,1635745919"
  sha256 "1c948a9f318246c39bc3a3e4163408d86141ce0a1543d6379a63b1298827f7ae"

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

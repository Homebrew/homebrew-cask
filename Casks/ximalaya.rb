cask "ximalaya" do
  version "3.0.2,1659089544"
  sha256 "6efbf8717a59db6fd0d8ae886614f6aef4a25484ff06e886903d588264ab103f"

  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/#{version.csv.first}/download/mac-x64/Ximalaya_#{version.csv.first}_#{version.csv.second}_x64.dmg",
      verified: "s1.xmcdn.com/yx/ximalaya-pc-client/"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  livecheck do
    url "https://www.ximalaya.com/down/lite?client=mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Ximalaya[_-](\d+(?:\.\d+)+)[_-](\d+)_x64\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "喜马拉雅.app"
end

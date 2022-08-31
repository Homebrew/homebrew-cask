cask "ximalaya" do
  version "3.1.0,1661766058"
  sha256 "bb64b084867b52b2b6544a154cdba137eaec5a4499ef39c62fb1683f4f5a6dc9"

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

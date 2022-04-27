cask "ximalaya" do
  version "2.6.0,1647423365"
  sha256 "acf5eb744fba26ce092b8794c0a5868e2a29a00f1a5fb4429832cb991863b6d0"

  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/#{version.csv.first}/download/mac-x64/Ximalaya_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "s1.xmcdn.com/yx/ximalaya-pc-client/"
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

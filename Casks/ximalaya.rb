cask "ximalaya" do
  version "2.3.0,1640311700"
  sha256 "a744f346c58f4603da1be8e2b026cf06a8ba0e43e2e0a91315f08d4e18a0e945"

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

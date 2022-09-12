cask "ximalaya" do
  version "3.1.0,GKwRIRwG4lU8ACAAAAGZWamd"
  sha256 "23b1cceab392bc99ee96bd1ad3d9b03f0ff80ee167b900a6ae8f53f5d233b1f2"

  url "https://nativedl.pcdn.xmcdn.com/storages/3715-audiofreehighqps/FD/4F/#{version.csv.second}.dmg?ct=application/octet-stream&filename=Ximalaya_#{version.csv.first}_x64_c_99",
      verified: "nativedl.pcdn.xmcdn.com/storages/3715-audiofreehighqps/FD/4F/"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  livecheck do
    url "https://www.ximalaya.com/down/lite/v2?client=mac&channelId=99"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/4F/(.+)\.dmg.*?Ximalaya[._-](\d+(?:\.\d+)+)[._-]x64}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "喜马拉雅.app"
end

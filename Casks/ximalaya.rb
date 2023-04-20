cask "ximalaya" do
  version "3.3.8,GKwRIDoIDV21ACAAAAIOUXT0,3ba1,B7,8D"
  sha256 "9637d7ecdad7f3425f941e930cf54e6775de15d87f402fa5cd80b2deca96d783"

  url "https://nativedl.pcdn.xmcdn.com/storages/#{version.csv.third}-audiofreehighqps/#{version.csv.fourth}/#{version.csv.fifth}/#{version.csv.second}.dmg?ct=application/octet-stream&filename=Ximalaya_#{version.csv.first}_x64_c_99",
      verified: "nativedl.pcdn.xmcdn.com/storages/"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  livecheck do
    url "https://www.ximalaya.com/down/lite/v2?client=mac&channelId=99"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{storages/(.+)-aud.*?/(.+)/(.+)/(.+)\.dmg.*?Ximalaya[._-](\d+(?:\.\d+)+)}i)
      next if match.blank?

      "#{match[5]},#{match[4]},#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  app "喜马拉雅.app"

  zap trash: [
    "~/Library/Application Support/喜马拉雅",
    "~/Library/Application Support/Ximalaya SetUp",
    "~/Library/Logs/喜马拉雅",
    "~/Library/Preferences/com.gemd.iting.plist",
    "~/Library/Saved Application State/com.gemd.iting.savedState",
  ]
end

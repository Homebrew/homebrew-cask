cask "ximalaya" do
  version "3.3.4,GMCoOR4HzkL7ACAAAAH7rp-i,5e1d,40,54"
  sha256 "29e17299b81015c6692da0f806d50684ce9cccf5e10eb46a0cbb8d41391e7f17"

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

cask "ximalaya" do
  version "4.0.5,GKwRIRwK9myLACAAAAMmoSS1,47c2,0F,83"
  sha256 "ada59ea21183935e9302066f08fc3399df0aeca329df98ef1bf213332cbfc312"

  url "https://nativedl.pcdn.xmcdn.com/storages/#{version.csv.third}-audiofreehighqps/#{version.csv.fourth}/#{version.csv.fifth}/#{version.csv.second}.dmg?ct=application/octet-stream&filename=Ximalaya_#{version.csv.first}_x64_c_99",
      verified: "nativedl.pcdn.xmcdn.com/storages/"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  livecheck do
    url "https://www.ximalaya.com/down/lite/v2?client=mac&channelId=99"
    regex(%r{storages/(.+)-aud.*?/(.+)/(.+)/(.+)\.dmg.*?Ximalaya[._-](\d+(?:\.\d+)+)}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[5]},#{match[4]},#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  app "喜马拉雅.app"

  zap trash: [
    "~/Library/Application Support/Ximalaya SetUp",
    "~/Library/Application Support/喜马拉雅",
    "~/Library/Logs/喜马拉雅",
    "~/Library/Preferences/com.gemd.iting.plist",
    "~/Library/Saved Application State/com.gemd.iting.savedState",
  ]
end

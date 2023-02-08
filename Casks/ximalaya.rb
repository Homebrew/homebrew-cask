cask "ximalaya" do
  version "3.3.3,GKwRIW4HrA9nACAAAAHxkw5t,e57b,99,B9"
  sha256 "b93ec74e6ffea7f075b4c4b917b5a1d4fa21c34bce2aa71e6a3c51053c67bf10"

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
end

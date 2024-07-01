cask "yealink-meeting" do
  version "4.6.23,0851df859740efdab24f3066cf3dfc51"
  sha256 "8cb9ea423dd6dac93d5fb5fdb1609725aadfd0010ec25703c39873125f6f916f"

  url "https://download.ylyun.com/yealink-meeting/macos/latest/Yealink-Meeting.dmg?v=#{version.csv.second}"
  name "Yealink Meeting"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.ylyun.com/portal/pc/Download"

  livecheck do
    url "https://www.ylyun.com/portal/front/appPackageInfo?type=macos"
    strategy :json do |json|
      "#{json["data"]["packageVersion"]},#{json["data"]["md5"]}"
    end
  end

  app "Yealink Meeting.app"

  zap trash: [
    "~/Library/Application Support/Yealink Meeting",
    "~/Library/Application Support/YealinkSdk",
  ]

  caveats do
    requires_rosetta
  end
end

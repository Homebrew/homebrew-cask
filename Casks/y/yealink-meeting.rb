cask "yealink-meeting" do
  arch arm: "arm", intel: "X86"

  on_arm do
    version "4.7.35,f4c3893c90677dab518c079386836b77"
    sha256 "0b2461fe7783e9bf68971a7ead5c26fa1bc069502f8fea8c1ace2fd01f86dea6"
  end
  on_intel do
    version "4.7.34,cc9c41d99d795865c99f25695a136bde"
    sha256 "57a35cc1c0112bd01a6b1ffd3b167afcc14ed51207ae3fbaa01dd64b62871a99"
  end

  url "https://download.ylyun.com/yealink-meeting/mac-#{arch}/latest/Yealink-Meeting-#{arch}.dmg?v=#{version.csv.second}"
  name "Yealink Meeting"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.ylyun.com/portal/pc/Download"

  livecheck do
    url "https://www.ylyun.com/portal/front/appPackageInfo?type=mac-#{arch}"
    strategy :json do |json|
      "#{json.dig("data", "packageVersion")},#{json.dig("data", "md5")}"
    end
  end

  app "Yealink Meeting.app"

  zap trash: [
    "~/Library/Application Support/Yealink Meeting",
    "~/Library/Application Support/YealinkSdk",
  ]
end

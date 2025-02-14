cask "yealink-meeting" do
  arch arm: "arm", intel: "X86"

  on_arm do
    version "4.7.14,4160074ffd214b8e125358bbe77d3c8f"
    sha256 "184832efc2b437699320533b73fca9aaaf1106d6bcec964e1601db0243608781"
  end
  on_intel do
    version "4.7.13,c0271512475b6e1adfe855208eb7d5fc"
    sha256 "a680ee1d345d8000b2d94a2484dfda6f7810cf636bc046025d5d2f5977c7bac4"
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

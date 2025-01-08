cask "yealink-meeting" do
  arch arm: "arm", intel: "X86"

  on_arm do
    version "4.7.12,926bdd3764ceebc87135c11656a7326c"
    sha256 "95f4a71ccae8284e3b27c26ccc6c617a373f003f550e21815ccc705a1a4f5caa"
  end
  on_intel do
    version "4.7.11,94bcfa4662cabecc2c083941a8083336"
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

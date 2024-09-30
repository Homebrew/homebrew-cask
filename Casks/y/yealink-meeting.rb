cask "yealink-meeting" do
  arch arm: "mac-arm", intel: "macos"

  on_arm do
    version "4.7.6,cc6d8e880f0624dd7e3278d722779f6f"
    sha256 "b0e74eaa1ebc6a4218f8c476d85c6382a09d4094f7027d16af8c92f00082bab1"
  end
  on_intel do
    version "4.7.5,592de1f79a6a62c5ae478ec53b50131c"
    sha256 "948d6efd274f342362735b51efdfd3bdcc1229bc557da90e32a27c879e3185cd"
  end

  url "https://download.ylyun.com/yealink-meeting/#{arch}/latest/Yealink-Meeting.dmg?v=#{version.csv.second}"
  name "Yealink Meeting"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.ylyun.com/portal/pc/Download"

  livecheck do
    url "https://www.ylyun.com/portal/front/appPackageInfo?type=#{arch}"
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

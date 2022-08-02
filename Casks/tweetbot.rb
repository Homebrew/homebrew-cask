cask "tweetbot" do
  version "3.5.8,35800"
  sha256 "c9ee91fd2b68ce464ab2e44270c43cd92b3d7cb4f01ee0cea24036d41c84552c"

  url "https://tapbots.net/tweetbot4/Tweetbot.#{version.csv.second}.zip",
      verified: "tapbots.net/"
  name "Tweetbot"
  desc "Twitter client"
  homepage "https://tapbots.com/tweetbot/mac/"

  livecheck do
    url "https://tapbots.net/tweetbot4/update.plist"
    regex(%r{
      <key>shortVersion</key>.*?<string>(\d+(?:\.\d+)+)</string>
      .*?
      <key>version</key>.*?<integer>(\d+)</integer>
    }imx)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Tweetbot.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Application Scripts/*.com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Application Scripts/com.tapbots.Tweetbot#{version.major}Mac.SharingExtension",
    "~/Library/Containers/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Containers/com.tapbots.Tweetbot#{version.major}Mac.SharingExtension",
    "~/Library/Group Containers/*.com.tapbots.Tweetbot#{version.major}Mac",
  ]
end

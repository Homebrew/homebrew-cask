cask "tweetbot" do
  version "3.5.6,35600"
  sha256 "7db1833ff9bfb828705166d75e342702fef9e8c2a452c1f329810874d4bc0dd1"

  url "https://tapbots.net/tweetbot4/Tweetbot.#{version.after_comma}.zip",
      verified: "tapbots.net/"
  name "Tweetbot"
  desc "Twitter client"
  homepage "https://tapbots.com/tweetbot/mac/"

  livecheck do
    url "https://tapbots.net/tweetbot4/update.plist"
    strategy :extract_plist do |version|
      "#{version.values.map(&:short_version).compact.first},#{version.values.map(&:version).compact.first}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Tweetbot.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Containers/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Group Containers/*.com.tapbots.Tweetbot#{version.major}Mac",
  ]
end

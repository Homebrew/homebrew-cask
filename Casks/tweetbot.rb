cask "tweetbot" do
  version "3.5.7,35700"
  sha256 "6245981493a0a7c919d1945b4405647545760eb705d8918ebeeae7500e0898ca"

  url "https://tapbots.net/tweetbot4/Tweetbot.#{version.csv.second}.zip",
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

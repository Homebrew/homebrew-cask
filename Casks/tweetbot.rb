cask "tweetbot" do
  version "3.5.4,35400"
  sha256 "9d14401f02e2081d1e053fe8fdc13c70a0906da9c5191174f28e468aa36ef91f"

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

cask "timemator" do
  version "3.0.1,174"
  sha256 "0a0dcc7afbf8a65b0f7a7c385f8bfd5fcb869b53e086793292d70e1a2d1f366f"

  url "https://s3-eu-west-1.amazonaws.com/catforce-timemator/releases/Timemator_#{version.csv.first}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/catforce-timemator/"
  name "Timemator"
  desc "Automatic time-tracking application"
  homepage "https://timemator.com/"

  livecheck do
    url "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timemator.app"

  zap trash: [
    "~/Library/Application Scripts/com.catforce.timemator.macos.TimematorWidgets",
    "~/Library/Application Scripts/group.catforce.timemator",
    "~/Library/Application Support/com.catforce.timemator.macos",
    "~/Library/Application Support/Timemator",
    "~/Library/Caches/com.catforce.timemator.macos",
    "~/Library/Containers/com.catforce.timemator.macos.TimematorWidgets",
    "~/Library/Group Containers/group.catforce.timemator",
    "~/Library/Preferences/com.catforce.timemator.macos.plist",
  ]
end

cask "timemator" do
  version "3.0.2,175"
  sha256 "dfea3d35568605740a9570d26992e4cbbcf704ca3542f6cc5988766ee39a24f8"

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

cask "twist" do
  version "1.0.6"
  sha256 "ebae2db3001fd45d04bf8dbca53cbf65e63aca6aa587b33db3a731fd7797f2a0"

  url "https://downloads.twist.com/mac/Twist-#{version}.dmg"
  name "Twist"
  desc "Team communication and collaboration software"
  homepage "https://twist.com/"

  livecheck do
    url "https://downloads.twist.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Twist.app"

  zap trash: [
    "~/Library/Application Support/Twist",
    "~/Library/Logs/Twist",
    "~/Library/Preferences/com.twistapp.mac-sparkle.Twist.plist",
    "~/Library/Saved Application State/com.twistapp.mac-sparkle.Twist.savedState",
  ]
end

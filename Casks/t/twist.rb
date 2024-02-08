cask "twist" do
  version "1.0.9"
  sha256 "a4c87eabaf7b47bc8da2b7498c2358ba9df287e0ce521b84830c4add31d66c31"

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

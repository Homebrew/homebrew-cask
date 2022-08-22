cask "twist" do
  version "1.0.8"
  sha256 "17fe52934f6e1eda80546f7a0045edc31e6555e47475cfda8c80bd6a8fdc619a"

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

cask "twist" do
  version "1.0.7"
  sha256 "802d54ccd8b760407ee079e6d17e050cb3be5d1aebdfb08b37533d94612081e9"

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

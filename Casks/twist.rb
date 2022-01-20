cask "twist" do
  version "1.0.4"
  sha256 "10d0e320b499c91f8d01efa23d16e192855c68374f207e2061c4a61e7145a5c5"

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

cask "typefully" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "4341385e52e5a02085bcd316b0015d15ffc8c53d1d97e593bb84ba31bdd4c980",
         intel: "6f9a081eca3015a0cd5126d1aa711da029c386b90fe119f33b5a5b2efb96330f"

  url "https://download.todesktop.com/2304250k2av6yux/Typefully%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/2304250k2av6yux/"
  name "Typefully"
  desc "Tool for writing and publishing tweets"
  homepage "https://typefully.com/"

  livecheck do
    url "https://download.todesktop.com/2304250k2av6yux/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Typefully.app"

  uninstall quit: "com.todesktop.2304250k2av6yux"

  zap trash: [
    "~/Library/Application Support/Typefully",
    "~/Library/Logs/Typefully",
    "~/Library/Preferences/com.todesktop.2304250k2av6yux.plist",
  ]
end

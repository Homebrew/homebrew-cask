cask "typefully" do
  arch arm: "arm64", intel: "x64"

  version "1.0.9"
  sha256 arm:   "a6d42fa9ff75bc63ee8dbad6ef02bec1290e5a9d0d184583c7ef51a3cdd512dd",
         intel: "3a09659008a97cd24d9ecd5d010ddfef343180d41743ed0d96b56f1d701d04da"

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
  depends_on macos: ">= :catalina"

  app "Typefully.app"

  uninstall quit: "com.todesktop.2304250k2av6yux"

  zap trash: [
    "~/Library/Application Support/Typefully",
    "~/Library/Logs/Typefully",
    "~/Library/Preferences/com.todesktop.2304250k2av6yux.plist",
  ]
end

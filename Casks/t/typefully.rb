cask "typefully" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "0323d236cafc0134cf7cd226d4d8742a1272b0b26d12c6ed9b7712ee6336d7ef",
         intel: "56a18d7622ba143765432d52428e290292f7c16492e80398fef113b67d46e57a"

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

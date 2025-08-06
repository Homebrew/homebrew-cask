cask "typefully" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "9c43bafcd93a806a281085a2d0b920da423b0b4297b4bd7716b0d547622e39b2",
         intel: "b6f7e7f308314c9be605186a1ac390374118ec9147deef102a6f0f43b6424fbe"

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

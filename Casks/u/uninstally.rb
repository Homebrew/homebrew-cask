cask "uninstally" do
  version "1.6.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/gostonx/uninstally/releases/download/v#{version}/Uninstally-#{version}.dmg"
  name "Uninstally"
  desc "Complete macOS application uninstaller with leftover detection"
  homepage "https://github.com/gostonx/uninstally"

  depends_on macos: ">= :ventura"

  app "Uninstally.app"

  zap trash: [
    "~/Library/Application Scripts/com.codenta.uninstally",
    "~/Library/Preferences/com.codenta.uninstally.plist",
    "~/Library/Application Support/com.codenta.uninstally",
  ]
end

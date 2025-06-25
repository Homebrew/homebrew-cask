cask "windowkeys" do
  version "3.0.1"
  sha256 "38600e9ffc6488ec08a703bfeaa0f760efb4a26d6d1152e87e5f4f01355af8eb"

  url "https://www.apptorium.com/public/products/windowkeys/releases/WindowKeys-#{version}.zip"
  name "WindowKeys"
  desc "Window-tiling keyboard shortcuts"
  homepage "https://www.apptorium.com/windowkeys"

  livecheck do
    url "https://www.apptorium.com/updates/windowkeys"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sequoia"

  app "WindowKeys.app"

  zap trash: [
    "~/Library/Caches/com.apptorium.WindowKeys",
    "~/Library/HTTPStorages/com.apptorium.WindowKeys",
    "~/Library/Preferences/com.apptorium.WindowKeys.plist",
    "~/Library/WebKit/com.apptorium.WindowKeys",
  ]
end

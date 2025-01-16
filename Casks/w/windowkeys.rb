cask "windowkeys" do
  version "2.0"
  sha256 "3d61541514e30e879b8eff43f4436702d99b3a66d72ebeb008ad2210fc8e2846"

  url "https://cdn.apptorium.com/products/windowkeys/releases/WindowKeys-#{version}.zip"
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

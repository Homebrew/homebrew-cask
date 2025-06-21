cask "windowkeys" do
  version "3.0"
  sha256 "62d69cf688a98b30f9d342102bf7b618c79d50400d1150ec537d6db115378713"

  url "https://www.apptorium.com/public/products/windowkeys/releases/WindowKeys-#{version}.zip"
  name "WindowKeys"
  desc "Window-tiling keyboard shortcuts"
  homepage "https://www.apptorium.com/windowkeys"

  livecheck do
    url "https://www.apptorium.com/updates/windowkeys"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :sequoia"

  app "WindowKeys.app"

  zap trash: [
    "~/Library/Caches/com.apptorium.WindowKeys",
    "~/Library/HTTPStorages/com.apptorium.WindowKeys",
    "~/Library/Preferences/com.apptorium.WindowKeys.plist",
    "~/Library/WebKit/com.apptorium.WindowKeys",
  ]
end

cask "whichspace" do
  version "1.0.0"
  sha256 "8f6feedb91c9f7ef73def633ebddb21cf87afb6b2522ba3219f31297ee93eaca"

  url "https://github.com/gechr/WhichSpace/releases/download/v#{version}/WhichSpace.zip"
  name "WhichSpace"
  desc "Active space menu bar icon"
  homepage "https://github.com/gechr/WhichSpace"

  livecheck do
    url "https://raw.githubusercontent.com/gechr/WhichSpace/updates/appcast.xml"
    strategy :sparkle
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: :sonoma

  app "WhichSpace.app"

  uninstall quit: "io.gechr.WhichSpace"

  zap trash: [
    "~/Library/Caches/io.gechr.WhichSpace",
    "~/Library/Cookies/io.gechr.WhichSpace.binarycookies",
    "~/Library/Preferences/io.gechr.WhichSpace.plist",
    "~/Library/Saved Application State/io.gechr.WhichSpace.savedState",
  ]
end

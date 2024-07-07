cask "whichspace" do
  version "0.3.2"
  sha256 "8a59e12862af491de4c42413c839426c28dcb2f29138bfa2f45529c079119ce8"

  url "https://github.com/gechr/WhichSpace/releases/download/v#{version}/WhichSpace.zip"
  name "WhichSpace"
  desc "Active space menu bar icon"
  homepage "https://github.com/gechr/WhichSpace"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "WhichSpace.app"

  uninstall quit: "io.gechr.WhichSpace"

  zap trash: [
    "~/Library/Caches/io.gechr.WhichSpace",
    "~/Library/Cookies/io.gechr.WhichSpace.binarycookies",
    "~/Library/Preferences/io.gechr.WhichSpace.plist",
    "~/Library/Saved Application State/io.gechr.WhichSpace.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

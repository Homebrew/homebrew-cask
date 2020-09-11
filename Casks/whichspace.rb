cask "whichspace" do
  version "0.3.0"
  sha256 "feaace7637eb3c8d63958db05da088e03c94335d531fd33f52f345e78f94eddd"

  url "https://github.com/gechr/WhichSpace/releases/download/v#{version}/WhichSpace.zip"
  appcast "https://github.com/gechr/WhichSpace/releases.atom"
  name "WhichSpace"
  desc "Active space menu bar icon"
  homepage "https://github.com/gechr/WhichSpace"

  depends_on macos: "> :yosemite"

  app "WhichSpace.app"

  uninstall quit: "io.gechr.WhichSpace"

  zap trash: [
    "~/Library/Caches/io.gechr.WhichSpace",
    "~/Library/Preferences/io.gechr.WhichSpace.plist",
    "~/Library/Saved Application State/io.gechr.WhichSpace.savedState",
  ]
end

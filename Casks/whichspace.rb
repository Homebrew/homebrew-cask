cask "whichspace" do
  version "0.3.1"
  sha256 "44897d0ead43703a0dc23ba5d8c81fbea06fbe9f0b40fbd20f1542531ddbc994"

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

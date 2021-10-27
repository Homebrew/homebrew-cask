cask "twine" do
  version "2.3.15"
  sha256 "9f8293917b971739d1f1dca4aa8ddf83b3dd20e5a75dccae60e28ce895f07dd3"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg",
      verified: "github.com/klembot/twinejs/"
  name "Twine"
  desc "Tool for telling interactive, nonlinear stories"
  homepage "https://twinery.org/"

  app "Twine.app"

  zap trash: [
    "~/Library/Application Support/Twine",
    "~/Library/Logs/Twine",
    "~/Library/Preferences/com.electron.twine.plist",
    "~/Library/Saved Application State/com.electron.twine.savedState",
  ]
end

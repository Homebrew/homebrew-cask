cask "twine" do
  version "2.7.1"
  sha256 "ba5dcfc505c5f7d811e10f198f53cc19c9591be5dca1f7b2c5b0dbec8e8fd0a8"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/Twine-#{version}-macos.dmg",
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

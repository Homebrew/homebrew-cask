cask "twine" do
  version "2.6.2"
  sha256 "27e7c9d64677b011e461dcfb1afc41493370003ba2a4b3086de4ac0a2f4c5a2b"

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

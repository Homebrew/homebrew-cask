cask "twine" do
  version "2.6.1"
  sha256 "e56816fb3d35041432aa6fd973114af1b62152067cd65d3ceff43456cb88d4b7"

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

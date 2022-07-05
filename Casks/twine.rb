cask "twine" do
  version "2.4.0"
  sha256 "ef0864d971aabfd655a8fe787070ede3be61cef4c8f66a3d597cb3f31e984f45"

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

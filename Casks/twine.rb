cask "twine" do
  version "2.6.0"
  sha256 "f66baaa14353d37293ce3ac82faa0fb16581692ff1aa965e2f23504621a9bab9"

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

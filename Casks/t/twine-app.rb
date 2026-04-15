cask "twine-app" do
  version "2.12.0"
  sha256 "918c55e1ccb4131db6f64f7586d024875075331211c2a1d03c73d2f3ed77bddc"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/Twine-#{version}-macOS.dmg",
      verified: "github.com/klembot/twinejs/"
  name "Twine"
  desc "Tool for telling interactive, nonlinear stories"
  homepage "https://twinery.org/"

  depends_on macos: ">= :monterey"

  app "Twine.app"

  zap trash: [
    "~/Library/Application Support/Twine",
    "~/Library/Logs/Twine",
    "~/Library/Preferences/com.electron.twine.plist",
    "~/Library/Saved Application State/com.electron.twine.savedState",
  ]
end

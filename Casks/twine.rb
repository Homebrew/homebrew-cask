cask "twine" do
  version "2.3.13"
  sha256 "4f6f49b938a196181d87d6ab0dc96a5fc02a479b5e698ddaf216840e7d7af48a"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg",
      verified: "github.com/klembot/twinejs/"
  appcast "https://github.com/klembot/twinejs/releases.atom"
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

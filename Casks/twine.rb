cask "twine" do
  version "2.3.16"
  sha256 "d3a479a4887910d3032e8f98461b86acd48c157b40406aa8354a267f47b0cfc2"

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

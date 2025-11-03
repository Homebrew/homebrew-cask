cask "twine-app" do
  version "2.11.0"
  sha256 "bcc405c2bac0f921d0603462f7ce6f714b07f9fad5feec672b1d7a4228fb83b5"

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

cask "twine" do
  version "2.9.2"
  sha256 "a583b55291f6c1a16a04198bdfb925d48eaf0beff58018e9b0d98aeaea47e6da"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/Twine-#{version}-macOS.dmg",
      verified: "github.com/klembot/twinejs/"
  name "Twine"
  desc "Tool for telling interactive, nonlinear stories"
  homepage "https://twinery.org/"

  depends_on macos: ">= :high_sierra"

  app "Twine.app"

  zap trash: [
    "~/Library/Application Support/Twine",
    "~/Library/Logs/Twine",
    "~/Library/Preferences/com.electron.twine.plist",
    "~/Library/Saved Application State/com.electron.twine.savedState",
  ]
end

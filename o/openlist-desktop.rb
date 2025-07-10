cask "openlist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "64cadf49fa03b1213ddc965f9f4591f9319878f696ffa9cd8fddd1946d796a36",
         intel: "175ab52d45f2702c3bd30c542a80941d83d7939edd51f69f129c73d5bdee37e6"

  url "https://github.com/openlistteam/openlist-desktop/releases/download/v#{version}/OpenList.Desktop_#{version}_#{arch}.dmg",
      verified: "github.com/openlistteam/openlist-desktop/"
  name "OpenList Desktop"
  desc "A Desktop Application for OpenList"
  homepage "https://github.com/openlistteam/openlist-desktop/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "OpenList Desktop.app"

  zap trash: [
    "~/Library/Application Support/io.github.openlistteam.openlist.desktop",
    "~/Library/Caches/io.github.openlistteam.openlist.desktop",
    "~/Library/WebKit/io.github.openlistteam.openlist.desktop",
  ]
end

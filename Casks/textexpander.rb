cask "textexpander" do
  version "7.4,740.5"
  sha256 "66d8ad85a46e155f293377c37809348adf23f5dec088d82b1a3dbdb87a8144b1"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg",
      verified: "cdn.textexpander.com/mac/"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  livecheck do
    url "https://textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end

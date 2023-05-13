cask "textexpander" do
  version "7.5.1,751.3"
  sha256 "0cd17d4061e12af96e2d4592f13a576ff29012215fc82e00685e9538aa1b6821"

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

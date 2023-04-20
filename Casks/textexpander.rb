cask "textexpander" do
  version "7.5,750.13"
  sha256 "13d9693b423a039eb7f09a844c53bfb2f9664febc1f472b9f3fb76e823572732"

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

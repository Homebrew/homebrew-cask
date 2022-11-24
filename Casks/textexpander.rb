cask "textexpander" do
  version "7.3.1,731.2"
  sha256 "3f914ee70f70cbe5b7bf96ee0cb01be52f160e55bcee6ccc17787c7b8d2fc425"

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
  depends_on macos: ">= :mojave"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end

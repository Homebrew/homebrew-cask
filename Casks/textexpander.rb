cask "textexpander" do
  version "7.5.2,752.3"
  sha256 "a782c90bf14516c0a785a5fa6be4f755f0e077a8d8594bfc859d01351ae3543e"

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

cask "textexpander" do
  version "6.8.5,685.6"
  sha256 "08533d2c787ceaa04d34ba42e73fea3b7798134f33191acef68d68d38b604958"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.zip",
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

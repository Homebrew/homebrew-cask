cask "textexpander" do
  version "6.5.5"
  sha256 "ff6b054397d1065da36789b9d84c8a76a89960488233127ac8cfdf2bbdd5dd9d"

  # cdn.textexpander.com/mac/ was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end

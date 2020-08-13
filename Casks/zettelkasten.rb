cask "zettelkasten" do
  version "3.3.1"
  sha256 "1f12515ac2943f0fc8083cf737f1216a35c2ee9249ecad2be02b99f7ebda8964"

  # github.com/sjPlot/Zettelkasten/ was verified as official when first introduced to the cask
  url "https://github.com/sjPlot/Zettelkasten/releases/download/v#{version}/Zettelkasten_#{version}_Mac-Java9+.dmg"
  appcast "https://github.com/sjPlot/Zettelkasten/releases.atom"
  name "zettelkasten"
  homepage "http://zettelkasten.danielluedecke.de/"

  app "Zettelkasten.app"
end

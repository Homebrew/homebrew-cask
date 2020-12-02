cask "zettelkasten" do
  version "3.3.1"
  sha256 "6e587e869a8c66d4feb7d6bb2e696369dc052f1df0d4e5644d170bbc8f58d741"

  # github.com/Zettelkasten-Team/Zettelkasten/ was verified as official when first introduced to the cask
  url "https://github.com/Zettelkasten-Team/Zettelkasten/releases/download/v#{version}/Zettelkasten_#{version}_Mac-Java8.zip"
  appcast "https://github.com/Zettelkasten-Team/Zettelkasten/releases.atom"
  name "zettelkasten"
  homepage "http://zettelkasten.danielluedecke.de/"

  app "Zettelkasten.app"
end

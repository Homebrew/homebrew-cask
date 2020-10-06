cask "vassal" do
  version "3.4.5"
  sha256 "bcafa916013a5b699ebb647a9ea32a51d6031fcfefbe1b18e18b6c3f45ebf1f0"

  # github.com/vassalengine/vassal was verified as official when first introduced to the cask
  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg"
  appcast "https://github.com/vassalengine/vassal/releases.atom"
  name "VASSAL"
  desc "Open-source boardgame engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

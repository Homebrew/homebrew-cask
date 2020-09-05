cask "vassal" do
  version "3.4.0"
  sha256 "73956fc0cf6bd95b26c9df1b61be8783c9b6f7c64287890a94664bcfde6acb4c"

  # github.com/vassalengine/vassal was verified as official when first introduced to the cask
  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg"
  appcast "https://github.com/vassalengine/vassal/releases.atom"
  name "VASSAL"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

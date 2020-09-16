cask "vassal" do
  version "3.4.1"
  sha256 "341e436e6185e2730470d9f77bec5bc9682f4cb6059cdc7a2ebc2b7d81ba503a"

  # github.com/vassalengine/vassal was verified as official when first introduced to the cask
  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg"
  appcast "https://github.com/vassalengine/vassal/releases.atom"
  name "VASSAL"
  desc "Open-source boardgame engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

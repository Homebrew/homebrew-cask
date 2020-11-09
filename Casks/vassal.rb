cask "vassal" do
  version "3.4.8"
  sha256 "d354f92158db32d43c05d69cf076b49d64f0f91ff3303209be247d7f632e6792"

  # github.com/vassalengine/vassal was verified as official when first introduced to the cask
  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg"
  appcast "https://github.com/vassalengine/vassal/releases.atom"
  name "VASSAL"
  desc "Open-source boardgame engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

cask "vassal" do
  version "3.4.6"
  sha256 "6262723c73cd67794adc5ad06fccea1fd7cf1fd3f380d62fb3281f1d1a009642"

  # github.com/vassalengine/vassal was verified as official when first introduced to the cask
  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg"
  appcast "https://github.com/vassalengine/vassal/releases.atom"
  name "VASSAL"
  desc "Open-source boardgame engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

cask "vassal" do
  version "3.4.13"
  sha256 "300b6c5e0837172019813b399d924c5e880ee9b7821b0ab90a9253027860ff70"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg",
      verified: "github.com/vassalengine/vassal/"
  appcast "https://github.com/vassalengine/vassal/releases.atom"
  name "VASSAL"
  desc "Open-source boardgame engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

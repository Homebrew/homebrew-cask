cask "vassal" do
  version "3.4.12"
  sha256 "98d39278823868310761ded273dac6532373ba68e7a112f13839e6c4d7009ac6"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg",
      verified: "github.com/vassalengine/vassal/"
  appcast "https://github.com/vassalengine/vassal/releases.atom"
  name "VASSAL"
  desc "Open-source boardgame engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

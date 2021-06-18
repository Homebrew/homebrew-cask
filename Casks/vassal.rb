cask "vassal" do
  version "3.5.7"
  sha256 "6006529023d92c8bb853a473c38205d0a51a079b27c00efa51b25a70d0dec858"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

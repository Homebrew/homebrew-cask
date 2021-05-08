cask "vassal" do
  version "3.5.5"
  sha256 "4ea3dac56ac4e8b3249d9bf009fe2c736a350967fa07b248276a2f4ce1002823"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Open-source boardgame engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

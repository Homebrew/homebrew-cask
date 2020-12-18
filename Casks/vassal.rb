cask "vassal" do
  version "3.4.11"
  sha256 "76c32efc6db62414d633457cc42e514a9555d92a07e146dafc4c85e91af9d8b0"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg",
      verified: "github.com/vassalengine/vassal/"
  appcast "https://github.com/vassalengine/vassal/releases.atom"
  name "VASSAL"
  desc "Open-source boardgame engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

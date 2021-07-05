cask "vassal" do
  version "3.5.8"
  sha256 "247eecec789d14a9b752248407c3a8b054fa7f08e98e97a51f79d9afe254a60a"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

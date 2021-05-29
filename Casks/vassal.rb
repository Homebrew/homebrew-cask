cask "vassal" do
  version "3.5.6"
  sha256 "1f89b217090116f56d0417efa368fc31770ec23633a2525cf1a1c2b7fded6907"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "http://www.vassalengine.org/"

  app "VASSAL.app"
end

cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.8"
  sha256 arm:   "9fa986619f640ff8e5ced11c505a1a3e28bc9086c68af5a612b6dd9ffaaa015f",
         intel: "92b5b27471df4e4d838cba85d17967a41f23120c8c491c06ac42aaef01d8b710"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VASSAL.app"
end

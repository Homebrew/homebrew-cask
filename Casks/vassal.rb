cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.10"
  sha256 arm:   "1779feaf63db14ae091bfdcd5516a34d09d709f557ef23d15bcafe1297a5be5f",
         intel: "602bac1009e292f36b515cae28bbffd319198c7c906dba40f2afb23d6a651f42"

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

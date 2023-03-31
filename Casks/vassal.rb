cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.15"
  sha256 arm:   "745a25e7c87b36d22af90f13509e6ea3ec21f6982b275ebbf618294063d3c9b9",
         intel: "50f07ebdead7bf2b303a2bafe612759c11c0d52078809cc1e75b77902c9f5128"

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

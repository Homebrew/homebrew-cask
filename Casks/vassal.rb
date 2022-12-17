cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.9"
  sha256 arm:   "b9a5f98dea10b63916a0d2b6596cafe88046939f3b26a68ec2b9ab850b034e4e",
         intel: "eabe625037db6a1a5f715500fddbb94ea381f474877ca7205bba820c9c07a30c"

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

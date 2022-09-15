cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.7"
  sha256 arm:   "0b1e00f631aba7b8d79185d8e96065e32af6dae994d8461e1a3fe5f513d9f66e",
         intel: "d5c01584a97aaee4aef222b0f07ada24ada823a7a515a79c357084b1ecddd8a2"

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

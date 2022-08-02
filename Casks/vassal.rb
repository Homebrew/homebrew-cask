cask "vassal" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.6.7"

  if Hardware::CPU.intel?
    sha256 "d5c01584a97aaee4aef222b0f07ada24ada823a7a515a79c357084b1ecddd8a2"
  else
    sha256 "0b1e00f631aba7b8d79185d8e96065e32af6dae994d8461e1a3fe5f513d9f66e"
  end

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  app "VASSAL.app"
end

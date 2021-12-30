cask "vassal" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.6.3"

  if Hardware::CPU.intel?
    sha256 "58968cbc79ebd6a2c50b7c4535e2ec15a2a3dc543f90131548047548c0817ef0"
  else
    sha256 "4b1e4bd16877d09355460f24ee008ad8c35c44b5ffd0b77f9ae33fe35bdcc18e"
  end

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  app "VASSAL.app"
end

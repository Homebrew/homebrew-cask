cask "vassal" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.6.5"

  if Hardware::CPU.intel?
    sha256 "631e90f037b86421a0341ae5299be2e80301317f958c18a558f11e46efe92f7b"
  else
    sha256 "348ca9e9330404210cf0c04404bfa7f9aa87f638b53cc458f8d0e9de254a1d3d"
  end

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  app "VASSAL.app"
end

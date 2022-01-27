cask "vassal" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.6.4"

  if Hardware::CPU.intel?
    sha256 "1aa3b948894e1d7e1a6566ccf7f82ddc2e85574b32b8a38e3f2b62a25ca52bcf"
  else
    sha256 "483f795d66c135c1cdc5edba2de5acb997ca72d687bf573e175f5f1c678d7d73"
  end

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  app "VASSAL.app"
end

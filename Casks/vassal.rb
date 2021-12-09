cask "vassal" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.6.1"

  if Hardware::CPU.intel?
    sha256 "cfc72844e7241cd89ed7ff583429d238fb6660e0898d18594fce325487a046e8"
  else
    sha256 "d7d04138e55747fa38387f6b4133afa8a080cc501863ed5cf50c055089ee2ca3"
  end

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  app "VASSAL.app"
end

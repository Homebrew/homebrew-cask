cask "vassal" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.6.2"

  if Hardware::CPU.intel?
    sha256 "8b1069fab615a901f4bae4bd45fefe93f52237e2e13a74a4856c937ac5aebcdd"
  else
    sha256 "84f5405fd300daa49bcfe5f4025f8b2f9435d563d70d6565ea7b70c6906be41c"
  end

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  app "VASSAL.app"
end

cask "vassal" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.6.6"

  if Hardware::CPU.intel?
    sha256 "f11ab15aeae7af43f85eecee6ac6a0e79ac675aaf85c1069e639d6eaa9a83a59"
  else
    sha256 "0df8c1287c68b1f6b9621f5379ec5011c18daadf373d26f8757758c4c14bc71d"
  end

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  app "VASSAL.app"
end

cask "trunk-io" do
  version "1.3.3"
  sha256 "229fe81b904e8ad5cf2f92e2d892969a63baab06baec4ea4f9c170a045c88633"

  url "https://trunk.io/releases/launcher/#{version}/trunk"
  name "Trunk Launcher"
  desc "Developer experience toolkit used to check, test, merge, and monitor code"
  homepage "https://trunk.io/"

  livecheck do
    url "https://trunk.io/releases/trunk"
    regex(/TRUNK[._-]LAUNCHER[._-]VERSION="v?(\d+(?:\.\d+)+)"/i)
  end

  binary "trunk"

  zap trash: "~/.cache/trunk"
end

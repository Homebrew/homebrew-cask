cask "tla-plus-toolbox" do
  version "1.8.0"
  sha256 "0353bd93f318b90608f1d1bc0c7bc6b43f4631476f22b90d30be793e156bdb03"

  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip",
      verified: "github.com/tlaplus/tlaplus/"
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  app "TLA+ Toolbox.app"
end

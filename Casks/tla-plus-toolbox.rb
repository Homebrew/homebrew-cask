cask "tla-plus-toolbox" do
  version "1.8.0"
  sha256 "81cd2276215ceda37ca629f30886c82bdce5987133d585d3fcadd47cd3df861e"

  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip",
      verified: "github.com/tlaplus/tlaplus/"
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  app "TLA+ Toolbox.app"
end

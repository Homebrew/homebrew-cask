cask "tla-plus-toolbox" do
  version "1.8.0"
  sha256 "48b06c0e0259323d3db8f08eeeb5097b601c4ba8109fa1be808ca6ea922b30ff"

  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip",
      verified: "github.com/tlaplus/tlaplus/"
  appcast "https://github.com/tlaplus/tlaplus/releases.atom"
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  conflicts_with cask: "homebrew/cask-versions/tla-plus-toolbox-nightly"

  app "TLA+ Toolbox.app"
end

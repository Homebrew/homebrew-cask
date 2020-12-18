cask "tla-plus-toolbox" do
  version "1.7.0"
  sha256 "66ee35f952fd80239cbf3c7e869bd0315234165677efc2a0f00d2a00ac1c6512"

  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip",
      verified: "github.com/tlaplus/tlaplus/"
  appcast "https://github.com/tlaplus/tlaplus/releases.atom"
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  conflicts_with cask: "homebrew/cask-versions/tla-plus-toolbox-nightly"

  app "TLA+ Toolbox.app"
end

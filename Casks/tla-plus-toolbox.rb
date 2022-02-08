cask "tla-plus-toolbox" do
  version "1.8.0"
  sha256 "8a593a8ddb69c6b6f05a53fc0353235b5abf8cd243c8fb8c8accbaf0d59cd6d7"

  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip",
      verified: "github.com/tlaplus/tlaplus/"
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  app "TLA+ Toolbox.app"
end

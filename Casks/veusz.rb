cask "veusz" do
  version "3.3.1"
  sha256 "1f5b96912d859a6d857041753cc9c4f7843158a8d148587eea71246c283278ac"

  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg",
      verified: "github.com/veusz/veusz/"
  appcast "https://github.com/veusz/veusz/releases.atom"
  name "Veusz"
  desc "Scientific plotting application"
  homepage "https://veusz.github.io/"

  app "Veusz.app"
end

cask "veusz" do
  version "3.2.1"
  sha256 "ee81b517f07c7ff1a31a7ec6f18a41380aa97506866a366db86114a585221902"

  # github.com/veusz/veusz/ was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast "https://github.com/veusz/veusz/releases.atom"
  name "Veusz"
  desc "Scientific plotting application"
  homepage "https://veusz.github.io/"

  app "Veusz.app"
end

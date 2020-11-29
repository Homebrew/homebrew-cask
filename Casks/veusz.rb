cask "veusz" do
  version "3.3"
  sha256 "ca73e54eedfe631000fb9262c1f0ab18fa832d24ba09c292299d0f03e9417660"

  # github.com/veusz/veusz/ was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast "https://github.com/veusz/veusz/releases.atom"
  name "Veusz"
  desc "Scientific plotting application"
  homepage "https://veusz.github.io/"

  app "Veusz.app"
end

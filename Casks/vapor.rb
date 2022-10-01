cask "vapor" do
  version "3.7.0"
  sha256 "4d165628a8bd25cfe7c132e7d6018150e98f168ba003e0cf5873929c7d1b7b03"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR#{version.major}-#{version}-Darwin.dmg"
  name "VAPOR"
  desc "Visualization and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  app "vapor.app"

  # No zap stanza required
end

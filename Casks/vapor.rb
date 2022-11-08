cask "vapor" do
  version "3.7.0"
  sha256 "0fa9939640c164415bd245536763bfda37d1c6df31bb5b1ae456f42058f6d53c"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR#{version.major}-#{version}-Darwin.dmg"
  name "VAPOR"
  desc "Visualization and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  app "vapor.app"

  # No zap stanza required
end

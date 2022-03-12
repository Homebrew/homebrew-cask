cask "vapor" do
  version "3.6.0"
  sha256 "eb77d8c70ac1e03d4c3f79d362d1c6702d87d30ff23472b53773aaeda9dc2dff"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR#{version.major}-#{version}-Darwin.dmg"
  name "VAPOR"
  desc "Visualization and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  app "vapor.app"

  # No zap stanza required
end

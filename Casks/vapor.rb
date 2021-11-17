cask "vapor" do
  version "3.5.0"
  sha256 "16e321be63def7c16002bdc09f2ab403fe9ad4f85595a2f24d9069e8d6530dab"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR#{version.major}-#{version}-Darwin.dmg"
  name "VAPOR"
  desc "Visualization and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  app "vapor.app"

  # No zap stanza required
end

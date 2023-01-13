cask "vapor" do
  version "3.8.0"
  sha256 "a5e371d00fa02c5420aa1944f2ceaff560aab3b53d9d749704651c99743db1a9"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR#{version.major}-#{version}-Darwin.dmg"
  name "VAPOR"
  desc "Visualization and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  app "vapor.app"

  # No zap stanza required
end

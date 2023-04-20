cask "vapor" do
  version "3.8.1"
  sha256 "02156e9ec5aea50167f9ad5f42b63080e3ec2619619a037ee52d4991f85099c7"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR#{version.major}-#{version}-Darwin.dmg"
  name "VAPOR"
  desc "Visualization and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  app "vapor.app"

  # No zap stanza required
end

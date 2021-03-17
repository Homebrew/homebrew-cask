cask "vapor" do
  version "3.3.0"
  sha256 "13c2937f1ce9d25cb0aef3ea7fc4430386cbff73771502f2725a81591f08c792"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR3-#{version}-Darwin.dmg"
  appcast "https://github.com/NCAR/VAPOR/releases.atom"
  name "VAPOR"
  homepage "https://github.com/NCAR/VAPOR"

  app "vapor.app"
end

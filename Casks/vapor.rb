cask "vapor" do
  version "3.2.0"
  sha256 "2c81e9b5f6d9744b18aadb07eb88ba1be606f0db6c062f4591fedcd6633aa072"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR3-#{version}-Darwin.dmg"
  appcast "https://github.com/NCAR/VAPOR/releases.atom"
  name "VAPOR"
  homepage "https://github.com/NCAR/VAPOR"

  app "vapor.app"
end

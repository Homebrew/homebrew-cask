cask "vapor" do
  version "3.4.0"
  sha256 "ebe3494eb45c098bdc3df0e4cb41a6699f7856147633d90388e99cb3b4221710"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR3-#{version}-Darwin.dmg"
  name "VAPOR"
  homepage "https://github.com/NCAR/VAPOR"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "vapor.app"
end

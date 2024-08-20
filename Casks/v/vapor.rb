cask "vapor" do
  arch arm: "AppleSilicon", intel: "Darwinx86"

  version "3.9.3"
  sha256 arm:   "a154eda16c8c6e5264ca9857c8a57044634e908d21aabb1a1ce90edbd20e23f3",
         intel: "ecd1521c1e318a7af766266516bf32138712e28e6d07ce2e975caf410d365705"

  url "https://github.com/NCAR/VAPOR/releases/download/v#{version}/VAPOR#{version.major}-#{version}-#{arch}.dmg"
  name "VAPOR"
  desc "Visualisation and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "vapor.app"

  zap trash: [
    "~/.vapor3_settings",
    "~/Library/Saved Application State/Vapor3.savedState",
  ]
end

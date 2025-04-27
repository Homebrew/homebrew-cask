cask "vapor" do
  arch arm: "AppleSilicon", intel: "macOSx86"

  version "3.10.0"
  sha256 arm:   "10821249766e08ef0abbeebc7a9536b1743a13a088c100a38539ce348f51a2ef",
         intel: "89faacba77d4f52b8ecb16d811ce304c56047c997ff3aa0983a7c16144b55416"

  url "https://github.com/NCAR/VAPOR/releases/download/#{version}/VAPOR#{version.major}-#{version}-#{arch}.dmg"
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

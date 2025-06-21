cask "vapor" do
  arch arm: "AppleSilicon", intel: "macOSx86"

  version "3.10.1"
  sha256 arm:   "2c5f41427f064318c7c4724478ee1aa4bbcaca47cba43b40ef5c8e52c6108c8a",
         intel: "20ae373a883242d99ed46d4c3b69481f23bcf1bd5b304cdc403cd7688ff185ba"

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

cask "vapor" do
  arch arm: "M1", intel: "x86"

  version "3.9.2"
  sha256 arm:   "130806331261298a53c07451ab11bc728e5fe0fc86483bcc8a8f49a5d8018751",
         intel: "00dbfcea7e6a7512d76fd6684af9471ba9bd0cc62dd324b6ee9e941e091f174d"

  url "https://github.com/NCAR/VAPOR/releases/download/v#{version}/VAPOR#{version.major}-#{version}-MacOS-#{arch}.dmg"
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

cask "unblah" do
  version ".18"
  sha256 "4656c9cf8b6a41b7bb2ed3b5f9882892f30264066a2985bce51fca794831b39a"

  url "https://github.com/akaalias/getunblah/releases/download/v#{version}/Unblah.dmg",
      verified: "github.com/akaalias/getunblah/"
  name "Unblah"
  desc "Keep track of how long you've been speaking"
  homepage "https://unblah.me/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Unblah.app"
end

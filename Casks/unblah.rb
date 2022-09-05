cask "unblah" do
  version ".18"
  sha256 "4656c9cf8b6a41b7bb2ed3b5f9882892f30264066a2985bce51fca794831b39a"

  url "https://github.com/akaalias/getunblah/releases/download/v#{version}/Unblah.dmg",
      verified: "github.com/akaalias/getunblah/"
  name "Unblah"
  desc "An app for those (like myself) who talk too much, or too little, when they get nervous in meetings"
  homepage "https://unblah.me/"

  app "Unblah.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end

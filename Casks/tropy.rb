cask "tropy" do
  version "1.8.1"
  sha256 "95ce861ab468f490cb9ca70810551847ef22d737563f48225b5c2cce5f06860c"

  url "https://github.com/tropy/tropy/releases/download/#{version}/tropy-#{version}.dmg",
      verified: "github.com/tropy/tropy/"
  name "Tropy"
  desc "Research photo management"
  homepage "https://tropy.org/"

  livecheck do
    url :url
    strategy :git
  end

  app "Tropy.app"
end

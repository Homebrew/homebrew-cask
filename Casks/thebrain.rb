cask "thebrain" do
  version "11.0.132.0"
  sha256 "a92e40a9f8f766ec514df4d85d0fd3bc799169f2e56267113c60a24fdb246305"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  livecheck do
    url "https://salesapi.thebrain.com/?a=doDirectDownload&id=11000"
    strategy :header_match
  end

  app "TheBrain #{version.major}.app"
end

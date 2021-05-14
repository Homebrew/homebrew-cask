cask "thebrain" do
  version "11.0.137.0"
  sha256 "67ec72cfc2166ffa9e19cebdd709c106aa52fef23eb8e58a106a424542d2955b"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name "TheBrain"
  homepage "https://www.thebrain.com/"

  livecheck do
    url "https://salesapi.thebrain.com/?a=doDirectDownload&id=11000"
    strategy :header_match
  end

  app "TheBrain #{version.major}.app"
end

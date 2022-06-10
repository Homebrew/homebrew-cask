cask "thebrain" do
  version "12.0.88.0"
  sha256 "0671e4ecc5042c8bdcefa6a9666ca260ebb349154edd3d1a90fad8ed406b5636"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name "TheBrain"
  desc "Mind mapping and personal knowledge base software"
  homepage "https://www.thebrain.com/"

  livecheck do
    url "https://salesapi.thebrain.com/?a=doDirectDownload&id=12000"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "TheBrain #{version.major}.app"
end

cask "thebrain" do
  version "13.0.22.0"
  sha256 "a15f8b8aafba49640cfc832a21fd372f7e237c456aedc8e32af6667a621da490"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name "TheBrain"
  desc "Mind mapping and personal knowledge base software"
  homepage "https://www.thebrain.com/"

  livecheck do
    url "https://salesapi.thebrain.com/?a=doDirectDownload&id=13000"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "TheBrain #{version.major}.app"
end

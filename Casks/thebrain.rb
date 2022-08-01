cask "thebrain" do
  version "12.0.93.0"
  sha256 "c75a1c043c00ea6765765f81194281995372385e5b4b912945df9ca21cc2e3ea"

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

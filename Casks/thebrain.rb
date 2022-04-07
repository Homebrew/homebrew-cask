cask "thebrain" do
  version "12.0.87.0"
  sha256 "82e113848e9f2d8c19d42251582ea7b2e1e7ed48ad3da37bf3e75b6b4b6efcb9"

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

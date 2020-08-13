cask "virtualhostx" do
  version "2020.09,2015"
  sha256 "17f77d48b73f8c70cd5de3ecdc6204ee1f276c3d12c6e172de79024cc75b15d5"

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast "https://shine.clickontyler.com/appcast.php?id=45"
  name "VirtualHostX"
  homepage "https://clickontyler.com/virtualhostx/"

  depends_on macos: ">= :sierra"

  app "VirtualHostX.app"
end

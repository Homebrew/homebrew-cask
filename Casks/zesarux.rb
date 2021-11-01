cask "zesarux" do
  version "10.0"
  sha256 "df45b2d1cf72bcb75ed13d398dfffbf33d293b3d8eccc2545cd61f30fab15b07"

  url "https://github.com/chernandezba/zesarux/releases/download/#{version}/ZEsarUX_macos-#{version}.dmg"
  name "ZEsarUX"
  homepage "https://github.com/chernandezba/zesarux"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ZEsarUX.app"
end

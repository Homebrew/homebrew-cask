cask "zesarux" do
  version "9.2"
  sha256 "66920b8f4e8af7178e1267152f6eb5056349fb91ae5453c42940be0b29ad9a8f"

  url "https://github.com/chernandezba/zesarux/releases/download/#{version}/ZEsarUX_macos-#{version}.dmg"
  name "ZEsarUX"
  homepage "https://github.com/chernandezba/zesarux"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ZEsarUX.app"
end

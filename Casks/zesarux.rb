cask "zesarux" do
  version "8.1.1"
  sha256 "258f25575a769b05d0c61c52fb152b7662e29c2df2b59a56085b0efe97d6f58e"

  url "https://github.com/chernandezba/zesarux/releases/download/#{version.major_minor}/ZEsarUX_macos-#{version}.dmg.gz"
  appcast "https://github.com/chernandezba/zesarux/releases.atom"
  name "ZEsarUX"
  homepage "https://github.com/chernandezba/zesarux"

  app "ZEsarUX.app"
end

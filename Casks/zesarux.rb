cask "zesarux" do
  version "9.1"
  sha256 "4522b7fa4425258eaaa1d915c16a5141d81b01e0b7fc66c3f3f0ef09361f3e6c"

  url "https://github.com/chernandezba/zesarux/releases/download/#{version}/ZEsarUX_macos-#{version}.dmg"
  appcast "https://github.com/chernandezba/zesarux/releases.atom"
  name "ZEsarUX"
  homepage "https://github.com/chernandezba/zesarux"

  app "ZEsarUX.app"
end

cask "transnomino" do
  version "5.3.1"
  sha256 "3c5619a494726515b4b276a7f7f8675ec7db9312b780bbeac5eecfb254affdc4"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  appcast "https://transnomino.bastiaanverreijt.com/"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://transnomino.bastiaanverreijt.com/"

  auto_updates true

  app "Transnomino.app"
end

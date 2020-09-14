cask "transnomino" do
  version "5.1"
  sha256 "fde074695a3a2ce9e41249278b6b05eccbfa117dfbf0c2db207af99fb3eb1710"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  appcast "https://transnomino.bastiaanverreijt.com/"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://transnomino.bastiaanverreijt.com/"

  auto_updates true

  app "Transnomino.app"
end

cask "transnomino" do
  version "5.0"
  sha256 "1b109e75257f3cfd4d4755fa42afffcddab633b825536293e75fe31feef56785"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  appcast "https://transnomino.bastiaanverreijt.com/"
  name "Transnomino"
  homepage "https://transnomino.bastiaanverreijt.com/"

  auto_updates true

  app "Transnomino.app"
end

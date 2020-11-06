cask "transnomino" do
  version "5.2.1"
  sha256 "9dfaed1b36ecc2013c985e4ddaad79c587a8c7eabc3f71c46bdce519d26d7310"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  appcast "https://transnomino.bastiaanverreijt.com/"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://transnomino.bastiaanverreijt.com/"

  auto_updates true

  app "Transnomino.app"
end

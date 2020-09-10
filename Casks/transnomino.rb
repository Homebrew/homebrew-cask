cask "transnomino" do
  version "5.0.1"
  sha256 "364bd1cf6e0e16ccdbf305a2772376a7c0c565121aa5b7e56439c73a795bbc0b"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  appcast "https://transnomino.bastiaanverreijt.com/"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://transnomino.bastiaanverreijt.com/"

  auto_updates true

  app "Transnomino.app"
end

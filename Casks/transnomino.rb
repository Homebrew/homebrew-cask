cask "transnomino" do
  version "5.1.1"
  sha256 "c52bcf89bf5b85a1485b754c1142ca1e50c323f27c41cc9b82328a4772929360"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  appcast "https://transnomino.bastiaanverreijt.com/"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://transnomino.bastiaanverreijt.com/"

  auto_updates true

  app "Transnomino.app"
end

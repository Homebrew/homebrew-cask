cask "transnomino" do
  version "5.3.0"
  sha256 "01f408e71385d22cab762fddee6e8f4fe7f116d05e589550c6f6129a82dc982f"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  appcast "https://transnomino.bastiaanverreijt.com/"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://transnomino.bastiaanverreijt.com/"

  auto_updates true

  app "Transnomino.app"
end

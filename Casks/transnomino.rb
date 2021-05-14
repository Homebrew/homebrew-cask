cask "transnomino" do
  version "5.3.2"
  sha256 "9e88fb2dda099bb368ddf403b3a8a286230e0d790caa829cc6242e281f9fdb32"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://transnomino.bastiaanverreijt.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Transnomino-(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true

  app "Transnomino.app"
end

cask "transnomino" do
  version "6.0"
  sha256 "7b2f8bfe6ed55c464ffed372e62bd6cf6d1265d81abf2e4ea9e2443f082f5215"

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

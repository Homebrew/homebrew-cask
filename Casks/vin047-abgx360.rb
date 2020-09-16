cask "vin047-abgx360" do
  version "1.0.6"
  sha256 "9f238a7f1fa5e41d01c4faef3dbf6ed0a78a38b694558d3c19484b82b6e57ae7"

  url "https://github.com/vin047/abgx360gui/releases/download/#{version}/abgx360.dmg"
  appcast "https://github.com/vin047/abgx360gui/releases.atom"
  name "vin047-abgx360"
  homepage "https://github.com/vin047/abgx360gui"

  app "abgx360 GUI.app"

  zap trash: "~/.abgx360"
end

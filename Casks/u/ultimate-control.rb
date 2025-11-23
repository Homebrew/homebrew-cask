cask "ultimate-control" do
  version "1.2"
  sha256 "8f26885d60c2afc502d97039c115f6bfcd22cee34ec9741017bc4d73bc3e5498"

  url "https://www.negusoft.com/downloads/ultimate_control_v#{version}_mac.dmg"
  name "NEGU Soft Ultimate Control"
  desc "Take control of your computer wirelessly"
  homepage "https://www.negusoft.com/ucontrol/"

  deprecate! date: "2024-11-01", because: :unmaintained
  disable! date: "2025-11-01", because: :unmaintained

  app "Ultimate Control.app"

  caveats do
    requires_rosetta
  end
end

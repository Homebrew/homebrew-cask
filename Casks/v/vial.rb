cask "vial" do
  version "0.7.5"
  sha256 "b628db11f8df012faafcceef7deb36b54821b507d4c970336f85a56c800e8876"

  url "https://github.com/vial-kb/vial-gui/releases/download/v#{version}/Vial-v#{version}.dmg",
      verified: "github.com/vial-kb/vial-gui/"
  name "Vial"
  desc "Configurator of compatible keyboards in real time"
  homepage "https://get.vial.today/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Vial.app"

  zap trash: [
    "~/Library/Application Support/Vial",
    "~/Library/Caches/Vial",
    "~/Library/Preferences/com.vial.Vial.plist",
    "~/Library/Preferences/Vial.plist",
  ]

  caveats do
    requires_rosetta
  end
end

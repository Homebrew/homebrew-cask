cask "wail" do
  version "0.2019.05.21"
  sha256 "45a50a28bfe4c385e93b4053259fdc35265ef0603a3e65e5caf37f1432788b79"

  url "https://github.com/machawk1/wail/releases/download/v#{version}/WAIL_v#{version}_macOS.dmg"
  name "WAIL"
  desc "Web Archiving Integration Layer: One-Click User Instigated Preservation"
  homepage "https://github.com/machawk1/wail"

  app "WAIL.app"

  caveats do
    requires_rosetta
  end
end

cask "tysimulator" do
  version "0.10.0"
  sha256 "9d441e0224878d79da4aff25dfc11f9b161518812bb03beed7c9de423c047b8a"

  url "https://github.com/ty0x2333/TySimulator/releases/download/#{version}/TySimulator.#{version}.dmg"
  name "TySimulator"
  desc "Utility for fast access to your iPhone Simulator apps"
  homepage "https://github.com/ty0x2333/TySimulator"

  depends_on macos: ">= :sierra"

  app "TySimulator.app"

  uninstall quit: "com.tianyiyan.TySimulator"

  zap trash: "~/Library/Preferences/com.tianyiyan.TySimulator.plist"

  caveats do
    requires_rosetta
  end
end

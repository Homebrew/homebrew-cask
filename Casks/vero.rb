cask "vero" do
  version "0.6.1"
  sha256 "668ef651523a72920347dcdef0ed331185205aa5a2a160f4c0c167c82ef28e67"

  url "https://downloads.vero.co/vero-beta-#{version}.dmg"
  name "VERO"
  desc "Ad-free, Algorithm-free Social"
  homepage "https://vero.co/"

  livecheck do
    url "https://vero.co/download/desktop/beta/macos"
    strategy :header_match
  end

  app "VERO.app"

  zap trash: [
    "~/Library/Application Support/VERO",
    "~/Library/Preferences/co.vero.desktop.plist",
    "~/Library/Saved Application State/co.vero.desktop.savedState",
  ]
end

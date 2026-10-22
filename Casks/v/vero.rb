cask "vero" do
  version "0.20.2633"
  sha256 "c159ade7072b59deaee9d4e3543904c6f56385c165949869fc2468684079d361"

  url "https://downloads.vero.co/vero-beta-#{version}.dmg"
  name "VERO"
  desc "Ad-free, Algorithm-free Social"
  homepage "https://vero.co/"

  livecheck do
    url "https://vero.co/download/desktop/beta/macos"
    strategy :header_match
  end

  depends_on :macos

  app "VERO.app"

  zap trash: [
    "~/Library/Application Support/VERO",
    "~/Library/Preferences/co.vero.desktop.plist",
    "~/Library/Saved Application State/co.vero.desktop.savedState",
  ]
end

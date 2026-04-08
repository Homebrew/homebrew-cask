cask "vibe-island" do
  version "1.0.21"
  sha256 "7d959e6d04bae32912ba7f65751118100116f0369761a14201bbac720f2b7955"

  url "https://dl.vibeisland.app/VibeIsland-#{version}.dmg"
  name "Vibe Island"
  desc "Dynamic Island for AI agents — monitor, approve, and jump back from the notch"
  homepage "https://vibeisland.app/"

  livecheck do
    url "https://updates.vibeisland.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Vibe Island.app"

  uninstall quit: "app.vibeisland.macos"

  zap trash: [
    "~/Library/Preferences/app.vibeisland.macos.plist",
    "~/Library/Caches/app.vibeisland.macos",
    "~/.vibe-island",
  ]
end

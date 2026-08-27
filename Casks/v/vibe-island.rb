cask "vibe-island" do
  version "1.0.47"
  sha256 "ecd152ebdd5330745739dd9405d60ec575d6f2fa3cda3748463c96c299300355"

  url "https://dl.vibeisland.app/VibeIsland-#{version}.dmg"
  name "Vibe Island"
  desc "Dynamic island AI agent utility"
  homepage "https://vibeisland.app/"

  livecheck do
    url "https://updates.vibeisland.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Vibe Island.app"

  uninstall quit: "app.vibeisland.macos"

  zap trash: [
    "~/.vibe-island",
    "~/Library/Caches/app.vibeisland.macos",
    "~/Library/HTTPStorages/app.vibeisland.macos",
    "~/Library/Preferences/app.vibeisland.macos.plist",
  ]
end

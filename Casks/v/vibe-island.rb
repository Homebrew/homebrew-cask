cask "vibe-island" do
  version "1.0.34"
  sha256 "8e07f78f3a3b11382ad4e23908e928e21a3eb7358832c898ba3764daf4d0b52e"

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
    "~/Library/Preferences/app.vibeisland.macos.plist",
  ]
end

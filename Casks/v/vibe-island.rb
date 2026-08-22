cask "vibe-island" do
  version "1.0.46"
  sha256 "979d6363781c45c5188287d5bb4a52f74d00d004029a519973047ee6d754eb81"

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

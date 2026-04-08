cask "vibe-island" do
  version "1.0.22"
  sha256 "ffd6add7a3adcb07ccbf065997182f930c33b27ad0a7c6a2215357756acba648"

  url "https://dl.vibeisland.app/VibeIsland-#{version}.dmg"
  name "Vibe Island"
  desc "Dynamic island AI agent utility"
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
    "~/.vibe-island",
    "~/Library/Caches/app.vibeisland.macos",
    "~/Library/Preferences/app.vibeisland.macos.plist",
  ]
end

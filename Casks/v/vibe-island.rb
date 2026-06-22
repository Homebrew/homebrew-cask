cask "vibe-island" do
  version "1.0.39"
  sha256 "8c3277cfed3e6a19f364f84ed0d206d739e5d212594635aa760844c22a8ba683"

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

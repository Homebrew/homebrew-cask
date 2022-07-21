cask "transnomino" do
  version "6.3"
  sha256 "aaabb389d98f96f86f76ffa3ae31de2884ce78f0b8cceec5bdf933b908392441"

  url "https://transnomino.bastiaanverreijt.com/download/Transnomino-#{version}.dmg"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://transnomino.bastiaanverreijt.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Transnomino[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Transnomino.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.bastiaanverreijt.Transnomino.help*",
    "~/Library/HTTPStorages/com.bastiaanverreijt.Transnomino",
    "~/Library/Preferences/com.bastiaanverreijt.Transnomino.plist",
  ]
end

cask "transnomino" do
  version "6.2"
  sha256 "e82fee61c49589f100931535a05c84b0c36b5c0267edc0d285dbcaded5bfe560"

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

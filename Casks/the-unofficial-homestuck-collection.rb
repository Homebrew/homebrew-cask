cask "the-unofficial-homestuck-collection" do
  version "1.1.0"
  sha256 "54b8216145cacea7ccf833ca8c52db60bc5606f78985d39b0d9aff2c24d855d7"

  url "https://github.com/Bambosh/unofficial-homestuck-collection/releases/download/V#{version}/The.Unofficial.Homestuck.Collection-#{version}.dmg",
      verified: "github.com/Bambosh/unofficial-homestuck-collection/"
  name "The Unofficial Homestuck Collection"
  desc "Offline viewer for the webcomic Homestuck"
  homepage "https://bambosh.github.io/unofficial-homestuck-collection/"

  app "The Unofficial Homestuck Collection.app"

  zap trash: [
    "~/Library/Application Support/unofficial-homestuck-collection",
    "~/Library/Preferences/com.bambosh.unofficialhomestuckcollection.plist",
    "~/Library/Saved Application State/com.bambosh.unofficialhomestuckcollection.savedState",
  ]

  caveats <<~EOS
    You will need to download the corresponding Asset Pack by visiting:
      #{Formatter.url(homepage)}
  EOS
end

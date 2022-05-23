cask "the-unofficial-homestuck-collection" do
  version "2.0.5"
  sha256 "2ccab1a0f1dbaa1335d24d3dd4ee2887c947898f65cb3d7f6b452f8489f0bdee"

  url "https://github.com/Bambosh/unofficial-homestuck-collection/releases/download/#{version}/The.Unofficial.Homestuck.Collection-#{version}.dmg",
      verified: "github.com/Bambosh/unofficial-homestuck-collection/"
  name "The Unofficial Homestuck Collection"
  desc "Offline viewer for the webcomic Homestuck"
  homepage "https://bambosh.github.io/unofficial-homestuck-collection/"

  livecheck do
    url :url
    strategy :github_latest
  end

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

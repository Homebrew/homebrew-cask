cask "zettelkasten" do
  version "3.2022.8"
  sha256 "62917c18dfd2dd2d8acd7d2ce4db6a4b036fc92a03877da108e85f8c5efcaeea"

  url "https://github.com/Zettelkasten-Team/Zettelkasten/releases/download/v#{version}/Package.dmg.zip",
      verified: "github.com/Zettelkasten-Team/Zettelkasten/"
  name "Zettelkasten"
  desc "Note box according to Luhmann"
  homepage "http://zettelkasten.danielluedecke.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zettelkasten.app"

  zap trash: [
    "~/.Zettelkasten",
    "~/Library/Saved Application State/de.danielluedecke.zettelkasten.ZettelkastenApp.savedState",
  ]

  caveats do
    depends_on_java "8"
  end
end

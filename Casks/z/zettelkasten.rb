cask "zettelkasten" do
  version "3.2023.10"
  sha256 "3c9bf950bc6eda0e335b463be6625e3ca668c8339dde0f600707afdb87e3c924"

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

  caveats do
    depends_on_java "8"
  end
end

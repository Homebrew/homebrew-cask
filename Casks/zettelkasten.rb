cask "zettelkasten" do
  version "3.3.1"
  sha256 "6e587e869a8c66d4feb7d6bb2e696369dc052f1df0d4e5644d170bbc8f58d741"

  url "https://github.com/Zettelkasten-Team/Zettelkasten/releases/download/v#{version}/Zettelkasten_#{version}_Mac-Java8.zip",
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

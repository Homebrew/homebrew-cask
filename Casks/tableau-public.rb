cask "tableau-public" do
  version "2022.4.0"
  sha256 "5f1a960cb8cd8ecc404fae3e0e6d3857ad22e554bbe9fabc75148b27041fc588"

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name "Tableau Public"
  desc "Explore, create and publicly share data visualizations online"
  homepage "https://public.tableau.com/s/"

  livecheck do
    url "https://www.tableau.com/downloads/public/mac"
    strategy :header_match do |headers|
      headers["location"][/-(\d+(?:-\d+)+)\.dmg/i, 1].tr("-", ".")
    end
  end

  pkg "Tableau Public.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Public.app",
  ]

  zap trash: [
    "~/Library/Caches/com.tableau.caching",
    "~/Library/Caches/com.tableausoftware.MapTiles",
  ]
end

cask "tableau-public" do
  version "2021.3.3"
  sha256 "0f7be3496ca6dd30b1f09efcb95292aac79e0e7819c71d3343c533a885563b44"

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

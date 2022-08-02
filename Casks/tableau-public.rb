cask "tableau-public" do
  version "2022.2.0"
  sha256 "b1f47eb0dc6bcfe040f7b626dd86a72a008dd9a7135c72e79a574327ceb1df8b"

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

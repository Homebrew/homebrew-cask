cask "tableau-reader" do
  version "2022.3.1"
  sha256 "d91bcfc1095cb671ddd090825d00440c7333e01acba51b55d338794b97a70062"

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name "Tableau Reader"
  desc "Open and interact with data visualizations built in Tableau Desktop"
  homepage "https://www.tableau.com/products/reader"

  livecheck do
    url "https://www.tableau.com/downloads/reader/mac"
    strategy :header_match do |headers|
      headers["location"][/-(\d+(?:-\d+)+)\.dmg/i, 1].tr("-", ".")
    end
  end

  pkg "Tableau Reader.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Reader.app",
  ]
end

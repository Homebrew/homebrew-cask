cask "tableau-reader" do
  version "2022.1.2"
  sha256 "7bfaa36c36309a7960dd1ffe8ed420a82b5f54384ac1d8dd0ac9a023071f46cb"

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

cask "tableau-reader" do
  version "2020.4.0"
  sha256 "bb9b2a0ad63d143529a466ef77080199ae89c3f4277e1d5b0207b1f9b5fb122a"

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name "Tableau Reader"
  homepage "https://www.tableau.com/products/reader"

  livecheck do
    url "https://www.tableau.com/downloads/reader/mac"
    strategy :header_match do |headers|
      headers["location"][/-(\d+-\d+-\d+)\.dmg/i, 1].tr("-", ".")
    end
  end

  pkg "Tableau Reader.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Reader.app",
  ]
end

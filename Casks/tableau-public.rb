cask "tableau-public" do
  version "2021.1.0"
  sha256 "047f938ca3dbb028b50fb91c2935ff88bcc751b6d14d30fb75a489d7a0046db6"

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name "Tableau Public"
  homepage "https://public.tableau.com/s/"

  livecheck do
    url "https://www.tableau.com/downloads/public/mac"
    strategy :header_match do |headers|
      headers["location"][/-(\d+-\d+-\d+)\.dmg/i, 1].tr("-", ".")
    end
  end

  pkg "Tableau Public.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Public.app",
  ]
end

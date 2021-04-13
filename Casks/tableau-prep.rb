cask "tableau-prep" do
  version "2021.1.3"
  sha256 "265467d610b70c5e3cb01d80af8d27a3431b7f986cb06afaa133145f617a3d66"

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg"
  name "Tableau Prep"
  homepage "https://www.tableau.com/support/releases/prep"

  livecheck do
    url "https://www.tableau.com/downloads/prep/mac"
    strategy :header_match do |headers|
      headers["location"][/-(\d+-\d+-\d+)\.dmg/i, 1].tr("-", ".")
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "Tableau Prep Builder.pkg"

  uninstall pkgutil: [
    "com.amazon.redshiftodbc",
    "simba.sparkodbc",
    "com.simba.sparkodbc",
    "com.simba.sqlserverodbc",
    "com.tableausoftware.Maestro.app",
    "com.tableausoftware.desktopShortcut",
    "com.tableausoftware.telemetry",
    "com.tableausoftware.FLEXNet.11.*",
    "com.tableausoftware.oracle",
    "com.tableausoftware.postgresql",
  ]
end

cask "tableau-prep" do
  version "2021.2.2"
  sha256 "170080105060d9d78599d90a28a7410147e5606b88e003fe84792f086f277004"

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg"
  name "Tableau Prep"
  name "Tableau Prep Builder"
  desc "Combine, shape, and clean your data for analysis"
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

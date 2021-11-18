cask "tableau-prep" do
  version "2021.3.2"
  sha256 "cbce3818b3ebf7e214ea2483a29e1e75af3da20d225a6819ec10f5f231d3e35f"

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

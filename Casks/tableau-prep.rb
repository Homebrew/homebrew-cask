cask "tableau-prep" do
  version "2022.4.2"
  sha256 "7ef87832d7c29ada01f4c03b92c420867b48ad5803db1c1e0e4431bcc009cdf6"

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg"
  name "Tableau Prep"
  name "Tableau Prep Builder"
  desc "Combine, shape, and clean your data for analysis"
  homepage "https://www.tableau.com/support/releases/prep"

  livecheck do
    url "https://www.tableau.com/downloads/prep/mac"
    strategy :header_match do |headers|
      headers["location"][/TableauPrep[._-]v?(\d+(?:-\d+)+)\.dmg/i, 1].tr("-", ".")
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "Tableau Prep Builder.pkg"

  uninstall pkgutil: [
    "com.amazon.redshiftodbc",
    "com.simba.sparkodbc",
    "com.simba.sqlserverodbc",
    "com.tableausoftware.desktopShortcut",
    "com.tableausoftware.FLEXNet.11.*",
    "com.tableausoftware.Maestro.app",
    "com.tableausoftware.oracle",
    "com.tableausoftware.postgresql",
    "com.tableausoftware.telemetry",
    "simba.sparkodbc",
  ]
end

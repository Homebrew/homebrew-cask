cask "tableau-prep" do
  version "2023.1.2"
  sha256 "98b51ed5853d663df3756415c842f861d8e05b20ed17ada9473dc8a7c8d4267a"

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

  zap trash:  [
        "~/Documents/My Tableau Prep Repository",
        "~/Library/Application Support/Tableau Prep Builder #{version}",
        "~/Library/Caches/com.tableau.caching",
        "~/Library/Preferences/com.tableau.Tableau-Prep-tableau-#{version.major}-#{version.minor}.plist",
        "~/Library/Preferences/com.tableausoftware.tableauprep.plist",
        "~/Library/Preferences/com.tableausoftware.tabminerva.plist",
        "~/Library/Saved Application State/com.tableausoftware.tableauprep.savedState",
        "~/Library/Tableau",
      ],
      delete: [
        "/Library/Application Support/Tableau Prep Builder",
        "/Library/Preferences/FLEXnet Publisher",
      ]
end

cask "visit" do
  if MacOS.version <= :high_sierra
    version "3.1.1"
    sha256 "4213daed23de17ee8bcfba779a96cce3ef92d3075ae666f7aeaffa824d484924"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10.13.dmg",
        verified: "github.com/visit-dav/visit/"
  else
    version "3.3.0"
    sha256 "81cd0da08740b1598bb0cc9a0ba58246d0589c02dc2455e3fdfafa7ea020df90"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/VisIt-#{version}.dmg",
        verified: "github.com/visit-dav/visit/"
  end

  name "VisIt"
  desc "Visualization and data analysis for mesh-based scientific data"
  homepage "https://wci.llnl.gov/simulation/computer-codes/visit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "VisIt.app"

  zap trash: "~/Library/Saved Application State/gov.llnl.visit.gui.savedState"
end

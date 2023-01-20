cask "visit" do
  on_high_sierra :or_older do
    version "3.1.1"
    sha256 "4213daed23de17ee8bcfba779a96cce3ef92d3075ae666f7aeaffa824d484924"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10.13.dmg",
        verified: "github.com/visit-dav/visit/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "3.3.1"
    sha256 "1c32039f0179100cde9b220f7ba0fe8ef9d8699aa74ed1fabeb93d11a46c9618"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/VisIt-#{version}.dmg",
        verified: "github.com/visit-dav/visit/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "VisIt"
  desc "Visualization and data analysis for mesh-based scientific data"
  homepage "https://wci.llnl.gov/simulation/computer-codes/visit"

  depends_on macos: ">= :high_sierra"

  app "VisIt.app"

  zap trash: "~/Library/Saved Application State/gov.llnl.visit.gui.savedState"
end

cask "visit" do
  on_big_sur :or_older do
    version "3.3.2"
    sha256 "f406850b21ddc16a6ca636b5c9087b41baeb5460ac92a9b140194c010eb285b3"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/Visit-#{version}.dmg",
        verified: "github.com/visit-dav/visit/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "3.4.1"
    sha256 "909f482c6a5e1777ede98d4c0a8019cd23f41ac0fde1eb58942ca99da84ef132"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/VisIt-#{version}.dmg",
        verified: "github.com/visit-dav/visit/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "VisIt"
  desc "Visualisation and data analysis for mesh-based scientific data"
  homepage "https://wci.llnl.gov/simulation/computer-codes/visit"

  depends_on macos: ">= :catalina"

  app "VisIt.app"

  zap trash: "~/Library/Saved Application State/gov.llnl.visit.gui.savedState"
end

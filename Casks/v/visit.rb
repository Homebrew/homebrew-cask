cask "visit" do
  on_big_sur :or_older do
    version "3.3.2"
    sha256 "f406850b21ddc16a6ca636b5c9087b41baeb5460ac92a9b140194c010eb285b3"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/Visit-#{version}.dmg",
        verified: "github.com/visit-dav/visit/"

    livecheck do
      skip "Legacy version"
    end

    caveats do
      requires_rosetta
    end
  end
  on_monterey :or_newer do
    arch arm: "23-arm64", intel: "22-x86_64"

    version "3.4.2"
    sha256 arm:   "75b4d4bc4f8b4d9d8d0ef55e14d34e97442fbf2cf7e10b4726dd773f30b7e827",
           intel: "27399911756a57817e6081d3a6e22e3d569028b9261fe04bf8ee1841fddad591"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version.dots_to_underscores}.darwin#{arch}.dmg",
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

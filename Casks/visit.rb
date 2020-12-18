cask "visit" do
  if MacOS.version <= :high_sierra
    version "3.1.1"
    sha256 "4213daed23de17ee8bcfba779a96cce3ef92d3075ae666f7aeaffa824d484924"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10.13.dmg",
        verified: "github.com/visit-dav/visit/"
  elsif MacOS.version <= :mojave
    version "3.1.4"
    sha256 "e8636d4920dfc155c3c5236f8cab9675214e090bdb00eb6bdcb96cee634c2bc9"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10_14.dmg",
        verified: "github.com/visit-dav/visit/"
  else
    version "3.1.4"
    sha256 "a75da6c27f38dbd5d859562da5777e810c71b85d6b06df47cef585a282330b06"

    url "https://github.com/visit-dav/visit/releases/download/v#{version}/visit#{version}.darwin-x86_64-10_15.dmg",
        verified: "github.com/visit-dav/visit/"
  end

  appcast "https://github.com/visit-dav/visit/releases.atom"
  name "VisIt"
  desc "Visualization and data analysis for mesh-based scientific data"
  homepage "https://wci.llnl.gov/simulation/computer-codes/visit"

  depends_on macos: ">= :high_sierra"

  app "VisIt.app"
end

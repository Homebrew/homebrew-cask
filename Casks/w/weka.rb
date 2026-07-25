cask "weka" do
  arch arm: "arm", intel: "x64"

  version "3.8.7"
  sha256 arm:   "d1d77d42d3eeb8828bdff128857b5ad6c91447b9587397463d4ca58f6d7472bd",
         intel: "0373c7ff005ef9a653dd9d5b933e3623a7474deff0990ba4a2c42ea287235f73"

  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-bellsoft-#{arch}-osx.dmg",
      verified: "sourceforge.net/weka/"
  name "Weka"
  desc "Collection of machine learning algorithms for data mining tasks"
  homepage "https://ml.cms.waikato.ac.nz/weka"

  # Upstream may use an even-numbered minor version to indicate stable releases,
  # so we omit versions with an odd-numbered minor to avoid developer releases
  # (using the same file name format) on this page.
  livecheck do
    url "https://waikato.github.io/weka-wiki/downloading_weka/"
    regex(/href=.*?weka[._-]v?(\d+[.-]\d*[02468](?:[.-]\d+)*)[^"' >]*?[._-]#{arch}(?:[._-]osx)?\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("-", ".")
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "weka-#{version}.app"

  zap trash: [
    "~/Library/Saved Application State/weka.gui.savedState",
    "~/wekafiles",
  ]

  caveats do
    depends_on_java "8+"
  end
end

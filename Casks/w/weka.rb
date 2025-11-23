cask "weka" do
  arch arm: "arm-osx", intel: "osx"

  version "3.8.6"
  sha256 arm:   "85de453da3bb41c952da48eee0bf574d1da7ee4fa6fd3a8e2d7a81a89d55d3d7",
         intel: "282d5ff81960d1ae43ee6e4e8eaa7ae8c341666a214e859728e15214af80383b"

  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-azul-zulu-#{arch}.dmg",
      verified: "sourceforge.net/weka/"
  name "Weka"
  desc "Collection of machine learning algorithms for data mining tasks"
  homepage "https://ml.cms.waikato.ac.nz/weka"

  livecheck do
    url "https://waikato.github.io/weka-wiki/downloading_weka/"
    regex(/href=.*?weka[._-]v?(\d+(?:[.-]\d+)+)[._-]azul[._-]zulu[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("-", ".")
    end
  end

  app "weka-#{version}.app"

  zap trash: [
    "~/Library/Saved Application State/weka.gui.savedState",
    "~/wekafiles",
  ]

  caveats do
    depends_on_java "8+"
  end
end

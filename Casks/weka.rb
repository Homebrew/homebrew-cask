cask "weka" do
  version "3.8.6"
  sha256 "092284e53006f37c5c43bab1f4a082771375c7db9d749963498a5e4bda0e146c"

  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-azul-zulu-osx.dmg",
      verified: "sourceforge.net/weka/"
  name "Weka"
  desc "Collection of machine learning algorithms for data mining tasks"
  homepage "https://www.cs.waikato.ac.nz/ml/weka/"

  livecheck do
    url "https://waikato.github.io/weka-wiki/downloading_weka/"
    strategy :page_match do |page|
      page[%r{href=.*?/weka[._-]v?(\d+(?:-\d+)+)[._-]azul[._-]zulu[._-]osx\.dmg}i, 1].tr("-", ".")
    end
  end

  app "weka-#{version}.app"
end

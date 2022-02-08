cask "weka" do
  version "3.8.6"

  if Hardware::CPU.intel?
    url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-azul-zulu-osx.dmg",
        verified: "sourceforge.net/weka/"
    sha256 "282d5ff81960d1ae43ee6e4e8eaa7ae8c341666a214e859728e15214af80383b"
  else
    url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-azul-zulu-arm-osx.dmg",
        verified: "sourceforge.net/weka/"
    sha256 "85de453da3bb41c952da48eee0bf574d1da7ee4fa6fd3a8e2d7a81a89d55d3d7"
  end

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

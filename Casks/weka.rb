cask "weka" do
  version "3.8.5"
  sha256 "9fe4a84bf6c7146b7899fea857310e932f37f39ea788e6eda8b994c4a8ef3048"

  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-azul-zulu-osx.dmg",
      verified: "sourceforge.net/weka/"
  name "Weka"
  homepage "https://www.cs.waikato.ac.nz/ml/weka/"

  livecheck do
    url "https://waikato.github.io/weka-wiki/downloading_weka/"
    strategy :page_match do |page|
      page[%r{href=.*?/weka-(\d+(?:-\d+)*)-azul-zulu-osx\.dmg}i, 1].tr("-", ".")
    end
  end

  app "weka-#{version.dots_to_hyphens}-azul-zulu.app"
end

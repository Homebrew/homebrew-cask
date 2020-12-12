cask "weka" do
  version "3.8.4"
  sha256 "312347853807fad45dff5afd2bc293a4c5face03e4bf16a5f0ae9b10b53aaf2a"

  # sourceforge.net/weka/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-azul-zulu-osx.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://waikato.github.io/weka-wiki/downloading_weka/&splitter_1=trunk&index_1=0",
          must_contain: version.dots_to_hyphens
  name "Weka"
  homepage "https://www.cs.waikato.ac.nz/ml/weka/"

  app "weka-#{version.dots_to_hyphens}-azul-zulu.app"
end

cask 'weka' do
  version '3.8.3'
  sha256 '3689a2ef1fbc5de143ca5b751c8b8183351ed4452955bb222a3f6fc5ea9d42c2'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-corretto-jvm.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.cs.waikato.ac.nz/ml/weka/downloading.html&splitter_1=Developer&index_1=0'
          configuration: version.dots_to_hypens
  name 'Weka'
  homepage 'https://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-corretto-jvm.app"
end

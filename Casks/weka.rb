cask 'weka' do
  version '3.8.3'
  sha256 '3ff3f75619f0e175ab4605ef7289e55d53d005bf84fd8385722256bd60e257ab'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-corretto-jvm.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.cs.waikato.ac.nz/ml/weka/downloading.html&splitter_1=Developer&index_1=0',
          configuration: version.dots_to_hyphens
  name 'Weka'
  homepage 'https://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-corretto-jvm.app"
end

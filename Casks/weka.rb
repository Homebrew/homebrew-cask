cask 'weka' do
  version '3.6.13'
  sha256 '1a070b1e36f927a89cf71590222560019e2bc1533ba4caca50543cc8bae3c631'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/weka/weka-#{version.gsub('.', '-')}-oracle-jvm.dmg"
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'
  license :gpl

  app "weka-#{version.gsub('.', '-')}-oracle-jvm.app"
end

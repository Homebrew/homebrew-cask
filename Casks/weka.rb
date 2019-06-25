cask 'weka' do
  version '3.9.3'
  sha256 '5a2313c2455bdc09439724e4c450bf974bb238355ebda582a043ba310537cb66'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-corretto-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss'
  name 'Weka'
  homepage 'https://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-corretto-jvm.app"
end

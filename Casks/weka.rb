cask 'weka' do
  version '3.8.2'
  sha256 '59eeb176bbb43fd37d2dc278cb615d476110d6b8030d5cd912342f04eeecf8f9'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: 'f99368b058c0dd899d222cc7699fad64c902aee9f1786f2a7e9d3f3baf58f634'
  name 'Weka'
  homepage 'https://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end

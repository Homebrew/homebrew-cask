cask 'weka' do
  version '3.9.1'
  sha256 'eecbe8dd3ea1b2a10195077f19c0667c465cd37a8ae135c9e7f2748c0966060c'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: 'fc9097a7d6d99f3d2bc2a8fed5d41f38ea5dc6bc4f5efdf1e2070d7bd1d9b0b0'
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end

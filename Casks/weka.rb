cask 'weka' do
  version '3.8.0'
  sha256 '9d47fa04ff3b7d6ebc18ab79ee7da76cbbdabe2bf26f003d08317ae225fc3249'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: '63dc078aa81e58784909f2dd679e41b752c65403bea64221175ca73532190591'
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end

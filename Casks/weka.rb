cask 'weka' do
  version '3.8.0'
  sha256 '9d47fa04ff3b7d6ebc18ab79ee7da76cbbdabe2bf26f003d08317ae225fc3249'

  # sourceforge.net/sourceforge/weka was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/weka/weka-#{version.gsub('.', '-')}-oracle-jvm.dmg"
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'
  license :gpl

  app "weka-#{version.gsub('.', '-')}-oracle-jvm.app"
end

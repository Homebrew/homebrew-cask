cask 'xca' do
  version '1.3.2'
  sha256 '8117821eef637c3fb78ce6e583fe0a3e667c714525e992b37d4d977a279a967e'

  url "https://downloads.sourceforge.net/xca/xca/#{version}/xca-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/xca/rss?path=/xca',
          checkpoint: '6d374c5779ca08e0c525c3314f71707b21906506a5c6b5558a01f5ad02ffbbbf'
  name 'XCA'
  homepage 'http://xca.sourceforge.net/'

  app 'xca.app'
end

cask 'xca' do
  version '1.3.2'
  sha256 '8117821eef637c3fb78ce6e583fe0a3e667c714525e992b37d4d977a279a967e'

  url "http://downloads.sourceforge.net/project/xca/xca/#{version}/xca-#{version}.dmg"
  name 'XCA'
  homepage 'http://xca.sourceforge.net/'
  license :bsd

  app 'xca.app'
end

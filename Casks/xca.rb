cask :v1 => 'xca' do
  version '1.1.0'
  sha256 '124aa68b07a1b655e020e4ef0d36a6c8d490824f225088f6dfbf410aecaf1be1'

  url "http://downloads.sourceforge.net/project/xca/xca/#{version}/xca-#{version}.dmg"
  name 'XCA'
  homepage 'http://xca.sourceforge.net/'
  license :bsd

  app 'xca.app'
end

cask :v1 => 'xrg' do
  version '1.7.3'
  sha256 '972ee45e202dee87aa5a696d2393f5eece21c8e6a54368ab6fefb6a371187063'

  url "http://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  homepage 'http://www.gauchosoft.com/Products/XRG/'
  license :unknown

  app 'XRG.app'
end

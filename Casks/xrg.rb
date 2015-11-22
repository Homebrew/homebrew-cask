cask :v1 => 'xrg' do
  version '2.0.0'
  sha256 '9c963b1ab5ddd4dba49e0e085e63e84b31613eff3e155f5e3dbb55c0abcfbe46'

  url "http://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  name 'XRG'
  homepage 'http://www.gauchosoft.com/Products/XRG/'
  license :gpl

  app 'XRG.app'
end

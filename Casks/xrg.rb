cask 'xrg' do
  version '2.0.0'
  sha256 '9c963b1ab5ddd4dba49e0e085e63e84b31613eff3e155f5e3dbb55c0abcfbe46'

  url "http://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  appcast 'http://www.gauchosoft.com/Products/XRG/',
          checkpoint: '28e09c94daac04fa2bb14cfd3bbf156fc20eaaa2bb1bc75cf274b38b9a9d0b01'
  name 'XRG'
  homepage 'http://www.gauchosoft.com/Products/XRG/'

  app 'XRG.app'
end

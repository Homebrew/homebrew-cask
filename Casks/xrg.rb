cask 'xrg' do
  version '2.5.0'
  sha256 'c9cc0e808a87376c838fa6e4a9c04fef9143a8ddedcfce9f7187258d7eac9ec9'

  url "https://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  appcast 'http://www.gauchosoft.com/Products/XRG/',
          checkpoint: '050bc1403bec43c7d0514065447ed9af949752ea0d6b38a6012aea4c3b550fb8'
  name 'XRG'
  homepage 'http://www.gauchosoft.com/Products/XRG/'

  app 'XRG.app'
end

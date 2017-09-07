cask 'xmrouter' do
  version '0.9.12'
  sha256 '875cf7ce65582e987105133b358e5ae9eb6ed0fee95175343a9acd856597f4e5'

  url "http://bigota.miwifi.com/xiaoqiang/client/XMRouter-#{version}.dmg"
  name 'xmrouter'
  name 'miwifi'
  name '小米路由器'
  homepage 'http://miwifi.com/'

  app 'XMRouter.app'
end

cask 'xmrouter' do
  version '0.9.16'
  sha256 '3d1fafcc09b501aa25d698988b6667ad820dd75eee22635661bd76d597f77e10'

  url "http://bigota.miwifi.com/xiaoqiang/client/XMRouter-#{version}.dmg"
  name 'xmrouter'
  name 'miwifi'
  name '小米路由器'
  homepage 'http://miwifi.com/'

  app 'XMRouter.app'
end

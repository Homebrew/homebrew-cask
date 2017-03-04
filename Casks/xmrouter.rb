cask 'xmrouter' do
  version :latest
  sha256 :no_check

  url 'http://bigota.miwifi.com/xiaoqiang/client/xqmac_client.dmg'
  name 'xmrouter'
  name 'miwifi'
  name '小米路由器'
  homepage 'http://miwifi.com/'

  app 'XMRouter.app'
end

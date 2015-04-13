cask :v1 => 'xmrouter' do
  version :latest
  sha256 :no_check

  url 'http://bigota.miwifi.com/xiaoqiang/client/xqmac_client.dmg'
  name '小米路由器'
  name 'miwifi'
  name 'xmrouter'
  homepage 'http://www1.miwifi.com/'
  license :gratis

  app 'XMRouter.app'
end

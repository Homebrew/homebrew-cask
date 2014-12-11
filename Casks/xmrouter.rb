cask :v1 => 'xmrouter' do
  version :latest
  sha256 :no_check

  url 'http://bigota.miwifi.com/xiaoqiang/client/xqmac_client.dmg'
  homepage 'http://www1.miwifi.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'XMRouter.app'
end

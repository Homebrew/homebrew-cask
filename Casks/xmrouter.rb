cask :v1 => 'xmrouter' do
  version :latest
  sha256 :no_check

  url 'http://bigota.miwifi.com/xiaoqiang/client/xqmac_client.dmg'
  homepage 'http://www1.miwifi.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'XMRouter.app'
end

cask 'thebrain-nine-preview' do
  version '9.0.97.0'
  sha256 '0b72955083b96b4f3a3f3597ee8431d5f26815b72a11b847aeb411cd089e0e94'

  url "http://api.thebrain.com/?a=doDirectDownload&id=78"
  name 'TheBrain 9 preview'
  homepage 'http://www.thebrain.com/products/thebrain/thebrain9/'
  license :commercial

  app 'TheBrain 9.app'

  uninstall delete: '/Applications/TheBrain.app'
end

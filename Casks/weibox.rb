cask 'weibox' do
  version '2.8.0'
  sha256 'a0317a6a0ac0fc2c8e5c07e3561b115808257f5e2eb2195eecdb05624dab21c5'

  url "http://2.weiboformac.sinaapp.com/downloads/#{version}.release.zip"
  appcast 'https://weiboformac.sinaapp.com/appcast/wm2.xml',
          checkpoint: '2aefd31728fb15674f7afd1bc2fd4b47f42b6720227f2ee81b8a6d80344815c3'
  name 'WeiboX'
  homepage 'https://weiboformac.sinaapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'WeiboX.app'
end

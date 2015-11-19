cask :v1 => 'weibox' do
  version '2.8.0'
  sha256 '416e2159d0ca83f66359cf3278d300a55367ee573867de71f31c4d926b97df6e'

  url "http://2.weiboformac.sinaapp.com/downloads/#{version}.release.zip"
  appcast 'https://weiboformac.sinaapp.com/appcast/wm2.xml',
          :sha256 => '2aefd31728fb15674f7afd1bc2fd4b47f42b6720227f2ee81b8a6d80344815c3'
  name 'WeiboX'
  homepage 'https://weiboformac.sinaapp.com'
  license :gratis

  app 'WeiboX.app'

  depends_on :macos => '>= :mountain_lion'
end

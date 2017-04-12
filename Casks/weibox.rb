cask 'weibox' do
  version '2.8.0'
  sha256 'a0317a6a0ac0fc2c8e5c07e3561b115808257f5e2eb2195eecdb05624dab21c5'

  url "http://2.weiboformac.sinaapp.com/downloads/#{version}.release.zip"
  appcast 'https://weiboformac.sinaapp.com/appcast/wm2.xml',
          checkpoint: '416e2159d0ca83f66359cf3278d300a55367ee573867de71f31c4d926b97df6e'
  name 'WeiboX'
  homepage 'https://weiboformac.sinaapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'WeiboX.app'
end

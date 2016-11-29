cask 'weibox' do
  version '2.8.0'
  sha256 '416e2159d0ca83f66359cf3278d300a55367ee573867de71f31c4d926b97df6e'

  url "http://2.weiboformac.sinaapp.com/downloads/#{version}.release.zip"
  appcast 'https://weiboformac.sinaapp.com/appcast/wm2.xml',
          checkpoint: '7eb49b121dd6b425d75716b599bbf748e61b171a5924f2d6dba0b612f042d41d'
  name 'WeiboX'
  homepage 'https://weiboformac.sinaapp.com'

  depends_on macos: '>= :mountain_lion'

  app 'WeiboX.app'
end

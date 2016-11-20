cask 'xiami' do
  version :latest
  sha256 :no_check

  url 'http://www.xiami.com/software/download?app=music_mac'
  name 'Xiami'
  homepage 'http://www.xiami.com/'

  app 'Xiami.app'

  uninstall quit: 'com.xiami.client'

  zap delete: [
                '~/Library/Caches/com.xiami.client',
                '~/Library/Containers/com.xiami.client',
                '~/Library/Preferences/com.xiami.client.plist',
                '~/Library/Saved Application State/com.xiami.client.savedState',
              ]
end

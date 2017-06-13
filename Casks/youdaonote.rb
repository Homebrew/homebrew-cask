cask 'youdaonote' do
  version :latest
  sha256 :no_check

  # download.ydstatic.com/notewebsite/downloads was verified as official when first introduced to the cask
  url 'http://download.ydstatic.com/notewebsite/downloads/YoudaoNote.dmg'
  name 'YoudaoNote'
  name '有道云笔记'
  homepage 'https://note.youdao.com/'

  depends_on macos: '>= :yosemite'

  app 'YoudaoNote.app'

  zap delete: [
                '~/Library/Caches/com.crashlytics.data/com.youdao.YoudaoDict',
                '~/Library/Caches/com.youdao.YoudaoDict',
                '~/Library/Caches/io.fabric.sdk.mac.data/com.youdao.YoudaoDict',
                '~/Library/Containers/com.youdao.note.YoudaoNoteMac',
                '~/Library/Saved Application State/com.youdao.YoudaoDict.savedState',
                '~/Library/com.youdao.YoudaoDict',
              ]
end

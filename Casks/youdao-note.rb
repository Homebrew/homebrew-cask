cask 'youdao-note' do
  version '2.5.1'
  sha256 '1ea5f4ebaacf658f712d1e2cd386c6eb90c8e4a82f577b9adbc44692b020a755'

  # download.ydstatic.com/notewebsite/downloads was verified as official when first introduced to the cask
  url 'http://download.ydstatic.com/notewebsite/downloads/YoudaoNote.dmg'
  name '有道云笔记'
  homepage 'https://note.youdao.com/index.html'

  depends_on macos: '>= :yosemite'

  app 'Youdao Note.app'

  zap delete: [
                '~/Library/Caches/com.crashlytics.data/com.youdao.YoudaoDict',
                '~/Library/Caches/com.youdao.YoudaoDict',
                '~/Library/Caches/io.fabric.sdk.mac.data/com.youdao.YoudaoDict',
                '~/Library/Containers/com.youdao.note.YoudaoNoteMac',
                '~/Library/Saved Application State/com.youdao.YoudaoDict.savedState',
                '~/Library/com.youdao.YoudaoDict',
              ]
end

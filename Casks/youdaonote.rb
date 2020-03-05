cask 'youdaonote' do
  version '3.5.8'
  sha256 'd3c10b5a53788ae04f5f6d8620c1d96fdb9b075c5473eac9d58d86f02b75878e'

  # download.ydstatic.com/notewebsite/downloads was verified as official when first introduced to the cask
  url 'https://download.ydstatic.com/notewebsite/downloads/YoudaoNote.dmg'
  appcast 'https://note.youdao.com/update/updateConfig.json'
  name 'YoudaoNote'
  name '有道云笔记'
  homepage 'https://note.youdao.com/'

  app 'YoudaoNote.app'

  zap trash: [
               '~/Library/Caches/com.crashlytics.data/com.youdao.YoudaoDict',
               '~/Library/Caches/com.youdao.YoudaoDict',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.youdao.YoudaoDict',
               '~/Library/Containers/com.youdao.note.YoudaoNoteMac',
               '~/Library/Saved Application State/com.youdao.YoudaoDict.savedState',
               '~/Library/com.youdao.YoudaoDict',
             ]
end

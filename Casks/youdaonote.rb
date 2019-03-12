cask 'youdaonote' do
  version '3.4.3'
  sha256 '696ea4771b993516050dbae05e6d0902efadec0c4245b6f126baa0d05d6431bd'

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

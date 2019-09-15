cask 'youdaonote' do
  version '3.5.4'
  sha256 '7c1d00df2303e0fa605a4c87767e0222d4c62aa7c45d2e4840ed4699573d1924'

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

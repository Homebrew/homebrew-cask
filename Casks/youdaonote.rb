cask 'youdaonote' do
  version '3.5.0'
  sha256 'cc6d357869bae367f58406fb90c4a4c10a036ca2941d2214b502a0f6388cb879'

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

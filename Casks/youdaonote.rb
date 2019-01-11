cask 'youdaonote' do
  if MacOS.version <= :high_sierra
    version '3.4.1,6311'
    sha256 'bf389b8bc528aae5e16dc1ffcac49b5ce3f41326272d6ee45c08b92d927ff822'

    # download.ydstatic.com/notewebsite/downloads was verified as official when first introduced to the cask
    url 'https://download.ydstatic.com/notewebsite/downloads/YoudaoNote.dmg'
  else
    version '3.4.2,6319'
    sha256 '45a508e24d5fdaa28b8268e74756423ef430ea2d271f7e12468e795f293dd088'

    # download.ydstatic.com/notewebsite/downloads was verified as official when first introduced to the cask
    url 'https://download.ydstatic.com/notewebsite/downloads/YoudaoNote_mojave.dmg'
  end

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

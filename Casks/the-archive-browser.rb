cask 'the-archive-browser' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/cx.c3.thearchivebrowser was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/cx.c3.thearchivebrowser/TheArchiveBrowser.zip'
  name 'The Archive Browser'
  homepage 'https://theunarchiver.com/archive-browser'

  auto_updates true

  app 'The Archive Browser.app'

  zap trash: [
               '~/Library/Cookies/cx.c3.thearchivebrowser.binarycookies',
               '~/Library/Preferences/cx.c3.thearchivebrowser.plist',
             ],
      rmdir: [
               '~/Library/Application Support/The Archive Browser',
               '~/Library/Caches/cx.c3.thearchivebrowser',
             ]
end

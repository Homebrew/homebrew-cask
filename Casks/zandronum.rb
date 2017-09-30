cask 'zandronum' do
  version '3.0'
  sha256 '34c7b1b80ed34a8d298711aeee1cc52c792fdcfe2ba1088589e341988f2294cd'

  url "https://zandronum.com/downloads/zandronum#{version}-macosx.dmg"
  name 'Zandronum'
  homepage 'https://zandronum.com/'

  app 'Zandronum.app'
  app 'Doomseeker.app'

  zap delete: [
                '~/Library/Preferences/zandronum.ini',
                '~/Library/Application Support/Doomseeker',
                '~/Library/Preferences/org.doomseeker.app.plist',
                '~/Library/Saved Application State/org.doomseeker.app.savedState',
              ],
      trash:  [
                '~/Library/Application Support/zandronum',
                '~/Library/Preferences/Doomseeker',
              ]
end

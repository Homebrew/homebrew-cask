cask 'zandronum' do
  version '3.0'
  sha256 '34c7b1b80ed34a8d298711aeee1cc52c792fdcfe2ba1088589e341988f2294cd'

  url "https://zandronum.com/downloads/zandronum#{version}-macosx.dmg"
  name 'Zandronum'
  homepage 'https://zandronum.com/'

  app 'Zandronum.app'
  app 'Doomseeker.app'

  zap delete: '~/Library/Saved Application State/org.doomseeker.app.savedState',
      trash:  [
                '~/Library/Application Support/Doomseeker',
                '~/Library/Application Support/Zandronum',
                '~/Library/Preferences/Doomseeker',
                '~/Library/Preferences/org.doomseeker.app.plist',
                '~/Library/Preferences/zandronum.ini',
              ]

  caveats <<-EOS.undent
    Install IWADs to ~/Library/Application Support/Zandronum/

    For more information, see: https://wiki.zandronum.com/Zandronum_and_IWAD_Files
  EOS
end

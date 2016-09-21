cask 'xld' do
  version '2016.09.20'
  sha256 '8a7c894cb28f10c08ab1d376da2c8ea7c454687a4cd5938af2d5159876ee10c4'

  # sourceforge.net/xld was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xld/xld-#{version.no_dots}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml',
          checkpoint: '5fbc9772cb9c0c56244a42432f39d340d4d4aec49cc9e11c4b3c014a65329b29'
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'http://tmkk.undo.jp/xld/index_e.html'
  license :oss

  app 'XLD.app'

  zap delete: [
                '~/Library/Application Support/XLD',
                '~/Library/Preferences/jp.tmkk.XLD.plist',
                '~/Library/Caches/jp.tmkk.XLD',
                '~/Library/Saved Application State/jp.tmkk.XLD.savedState',
              ]
end

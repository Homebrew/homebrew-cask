cask 'xld' do
  version '2016.10.07'
  sha256 '2c862a0e3109563c7848b5d0ad671218ab57d56f2444af60be06e50ad30df76d'

  # sourceforge.net/xld was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xld/xld-#{version.no_dots}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml',
          checkpoint: '44ac9db56348e5797244dac36133b3196073de2bf6ad20b3adc98299978da94c'
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'http://tmkk.undo.jp/xld/index_e.html'

  app 'XLD.app'

  zap delete: [
                '~/Library/Application Support/XLD',
                '~/Library/Preferences/jp.tmkk.XLD.plist',
                '~/Library/Caches/jp.tmkk.XLD',
                '~/Library/Saved Application State/jp.tmkk.XLD.savedState',
              ]
end

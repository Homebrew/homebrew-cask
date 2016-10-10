cask 'xld' do
  version '2016.10.07'
  sha256 '2c862a0e3109563c7848b5d0ad671218ab57d56f2444af60be06e50ad30df76d'

  # sourceforge.net/xld was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xld/xld-#{version.no_dots}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml',
          checkpoint: '0f95b97e04e14ef9e1cf4b695388024f2a66b47a41bdcc272fab4718b2746beb'
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

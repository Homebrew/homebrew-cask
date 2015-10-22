cask :v1 => 'xld' do
  version '20141129a'
  sha256 '2bf53dc840b0b037921e1ccc3b4b3244ff1a84f306c3ce749ec9da39f220b6d0'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/xld/xld-#{version}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml',
          :sha256 => '2bf53dc840b0b037921e1ccc3b4b3244ff1a84f306c3ce749ec9da39f220b6d0'
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'http://tmkk.undo.jp/xld/index_e.html'
  license :oss

  app 'XLD.app'

  zap :delete => [
                  '~/Library/Application Support/XLD',
                  '~/Library/Preferences/jp.tmkk.XLD.plist',
                  '~/Library/Caches/jp.tmkk.XLD',
                  '~/Library/Saved Application State/jp.tmkk.XLD.savedState'
                 ]
end

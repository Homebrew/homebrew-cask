cask :v1 => 'xld' do
  version '20141129a'
  sha256 '2bf53dc840b0b037921e1ccc3b4b3244ff1a84f306c3ce749ec9da39f220b6d0'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/xld/xld-#{version}.dmg"
  appcast 'https://xld.googlecode.com/svn/appcast/xld-appcast_e.xml',
          :sha256 => '16420b367df9b64870bd2a38ee20e688d17b065783b93371065ac7094ab93cb0'
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'http://tmkk.undo.jp/xld/index_e.html'
  license :oss

  app 'XLD.app'

  zap :delete => [
                  '~/Library/Application Support/XLD',
                  '~/Library/Preferences/jp.tmkk.XLD.plist',
                 ]
end

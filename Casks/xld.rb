cask :v1 => 'xld' do
  version '20141129'
  sha256 'adbf053cb2b24fb342302932b90ec745740d0421d6b5fbf48c5c35367538d9fd'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/xld/xld-#{version}.dmg"
  appcast 'http://xld.googlecode.com/svn/appcast/xld-appcast_e.xml',
          :sha256 => '16420b367df9b64870bd2a38ee20e688d17b065783b93371065ac7094ab93cb0'
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'http://tmkk.undo.jp/xld/'
  license :oss

  app 'XLD.app'

  zap :delete => [
                  '~/Library/Application Support/XLD',
                  '~/Library/Preferences/jp.tmkk.XLD.plist',
                 ]
end

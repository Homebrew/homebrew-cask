cask :v1 => 'xld' do
  version '20141109'
  sha256 '117f99b27d9396e468799129817e64e2fb04a87bb7bf9e11fa33ddac95cb3615'

  url "https://downloads.sourceforge.net/project/xld/xld-#{version}.dmg"
  appcast 'http://xld.googlecode.com/svn/appcast/xld-appcast_e.xml',
          :sha256 => '16420b367df9b64870bd2a38ee20e688d17b065783b93371065ac7094ab93cb0'
  homepage 'http://tmkk.undo.jp/xld/index_e.html'
  license :oss

  app 'XLD.app'

  zap :delete => [
                  '~/Library/Application Support/XLD',
                  '~/Library/Preferences/jp.tmkk.XLD.plist',
                 ]
end

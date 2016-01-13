cask 'xld' do
  version '2015.12.14'
  sha256 '08a03d72cf0ff2cc9e8810dc76604fd527270b0b6d35563d133e537a3ea30117'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/xld/xld-#{version.no_dots}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml',
          :checkpoint => '4bb11c39d18eb2f70c27e25ea4bdbabbe09b07b9881c8aadbc7c25bb752ef6fa'
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'http://tmkk.undo.jp/xld/index_e.html'
  license :oss

  app 'XLD.app'

  zap :delete => [
                   '~/Library/Application Support/XLD',
                   '~/Library/Preferences/jp.tmkk.XLD.plist',
                   '~/Library/Caches/jp.tmkk.XLD',
                   '~/Library/Saved Application State/jp.tmkk.XLD.savedState',
                 ]
end

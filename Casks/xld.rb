cask :v1 => 'xld' do
  version '20151214'
  sha256 '08a03d72cf0ff2cc9e8810dc76604fd527270b0b6d35563d133e537a3ea30117'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/xld/xld-#{version}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml',
          :sha256 => 'bfcf5c644e119533677462c8d4f50670aa37aea7947170be7adb375a040f2fd4'
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

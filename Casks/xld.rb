cask 'xld' do
  version '2018.10.19'
  sha256 '3f49f4c1669b6c9f1ae7f6e1919526bc539971ce8b1a880ac581da3bb3f84b2c'

  # sourceforge.net/xld was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xld/xld-#{version.no_dots}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml'
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'https://tmkk.undo.jp/xld/index_e.html'

  auto_updates true

  app 'XLD.app'

  zap trash: [
               '~/Library/Application Support/XLD',
               '~/Library/Preferences/jp.tmkk.XLD.plist',
               '~/Library/Caches/jp.tmkk.XLD',
               '~/Library/Saved Application State/jp.tmkk.XLD.savedState',
             ]
end

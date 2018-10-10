cask 'xld' do
  version '2018.10.01'
  sha256 '4928203ba1d8d0e091f85033a9adf496ce09b1d3231e585f579036063ceb125d'

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

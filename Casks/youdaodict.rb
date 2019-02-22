cask 'youdaodict' do
  version '151'
  sha256 'e5ab7081c48420353f34234b30ebe5600a002e9d01a24ef1682afffbcdfaa167'

  url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
  appcast 'https://cidian.youdao.com/mac-update/macdict_update.xml'
  name 'YoudaoDict'
  name '网易有道词典'
  homepage 'https://cidian.youdao.com/index-mac.html'

  app '网易有道词典.app'

  zap trash: [
               '~/Library/Application Support/com.youdao.YoudaoDict',
               '~/Library/Cookies/com.youdao.YoudaoDict.binarycookies',
               '~/Library/Preferences/com.youdao.YoudaoDict.plist',
               '~/Library/com.youdao.YoudaoDict',
             ]
end

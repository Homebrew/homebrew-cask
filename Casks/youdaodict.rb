cask 'youdaodict' do
  version '163'
  sha256 '18d17a59c0e1a981c772ef53fd6056f4f6f45908bdecfbe7232f62581c5c94cf'

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

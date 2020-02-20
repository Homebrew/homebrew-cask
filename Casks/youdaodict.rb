cask 'youdaodict' do
  version '170'
  sha256 'e97aace3f8f36ae2df1514976b92a8b226ae743cb2e402c6c338c478aebf71aa'

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

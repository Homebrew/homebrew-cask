cask 'youdaodict' do
  version '2.7.1'
  sha256 '405264be22ecd049ec59374ec315a0d076dc9c226f87c162f36df9538a3b9bb4'

  url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
  appcast 'https://cidian.youdao.com/index-mac.html'
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

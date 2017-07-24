cask 'youdaodict' do
  version :latest
  sha256 :no_check

  url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
  name 'YoudaoDict'
  name '网易有道词典'
  homepage 'https://cidian.youdao.com/index-mac.html'

  app '网易有道词典.app'

  zap trash: '~/Library/com.youdao.YoudaoDict'
end

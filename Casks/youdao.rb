cask 'youdao' do
  if MacOS.release < :yosemite
    version '1.4.1'
    sha256 '4754b764a49d53b224d5e92f3f9bffb57f3e90a0ce5801bfc70d1dc341dd6ae9'
    url 'http://codown.youdao.com/cidian/download/MacDict1.4.1.dmg'
  else
    version '2.0.1'
    sha256 '1d823f77a4b188bc8eccfdf71b422c5f6b1cc6f3c593e4a15108e4a0cc697d78'
    url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
  end

  appcast 'http://cidian.youdao.com/apps/macupdate/update.xml',
          checkpoint: 'ab00c1a82410a13cf7b7f69e14f5f5a57bc854bf05da6f6e41e3d549e4c8dfc1'
  name '有道词典'
  homepage 'http://cidian.youdao.com/index-mac.html'
  license :commercial

  app '有道词典.app'

  zap delete: '~/Library/com.youdao.YoudaoDict'
end

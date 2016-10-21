cask 'youdao' do
  if MacOS.version <= :mavericks
    version '1.4.1'
    sha256 '4754b764a49d53b224d5e92f3f9bffb57f3e90a0ce5801bfc70d1dc341dd6ae9'
    url 'http://codown.youdao.com/cidian/download/MacDict1.4.1.dmg'
  else
    version '2.1.134'
    sha256 '2a7ceea7f50e5b2facaf902f2cf189179ec2c6906337955abce0982ddec21245'
    url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
    appcast 'http://cidian.youdao.com/apps/macupdate/update.xml',
            checkpoint: 'ab00c1a82410a13cf7b7f69e14f5f5a57bc854bf05da6f6e41e3d549e4c8dfc1'
  end

  name '有道词典'
  homepage 'http://cidian.youdao.com/index-mac.html'

  app '有道词典.app'

  zap delete: '~/Library/com.youdao.YoudaoDict'
end

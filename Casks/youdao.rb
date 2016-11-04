cask 'youdao' do
  if MacOS.version <= :mavericks
    version '1.4.1'
    sha256 '4754b764a49d53b224d5e92f3f9bffb57f3e90a0ce5801bfc70d1dc341dd6ae9'
    url "http://codown.youdao.com/cidian/download/MacDict#{version}.dmg"
  else
    version '2.1.134'
    sha256 '10cd8bc2093e0fe74028c18d2663489acde5810f2f87258dd3a9229e1a9b12cb'
    url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
    appcast 'http://cidian.youdao.com/apps/macupdate/update.xml',
            checkpoint: 'ab00c1a82410a13cf7b7f69e14f5f5a57bc854bf05da6f6e41e3d549e4c8dfc1'
  end

  name '有道词典'
  homepage 'http://cidian.youdao.com/index-mac.html'

  app '有道词典.app'

  zap delete: '~/Library/com.youdao.YoudaoDict'
end

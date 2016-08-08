cask 'youdao' do
  if MacOS.version <= :mavericks
    version '1.4.1'
    sha256 '4754b764a49d53b224d5e92f3f9bffb57f3e90a0ce5801bfc70d1dc341dd6ae9'
    url 'http://codown.youdao.com/cidian/download/MacDict1.4.1.dmg'
  else
    version '2.0.1'
    sha256 '45cdb8676e0bd73eaa9a613fe8528c99c27a2745f40da395ac8ce4e94d07b69b'
    url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
    appcast 'http://cidian.youdao.com/apps/macupdate/update.xml',
            checkpoint: 'ab00c1a82410a13cf7b7f69e14f5f5a57bc854bf05da6f6e41e3d549e4c8dfc1'
  end

  name '有道词典'
  homepage 'http://cidian.youdao.com/index-mac.html'
  license :commercial

  app '有道词典.app'

  zap delete: '~/Library/com.youdao.YoudaoDict'
end

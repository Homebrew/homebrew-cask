cask 'youdao' do
  if MacOS.version <= :mavericks
    version '1.4.1'
    sha256 '4754b764a49d53b224d5e92f3f9bffb57f3e90a0ce5801bfc70d1dc341dd6ae9'
    url "http://codown.youdao.com/cidian/download/MacDict#{version}.dmg"
  else
    version '2.2.0'
    sha256 '027e6bb5b845c60c4854329594ce8704bb672f4703f3bd3f7d1014ffac3cfbc7'
    url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
  end

  name '有道词典'
  homepage 'https://cidian.youdao.com/index-mac.html'

  app '有道词典.app'

  zap trash: '~/Library/com.youdao.YoudaoDict'
end

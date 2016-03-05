cask 'youdao' do
  version :latest
  sha256 :no_check

  url 'http://codown.youdao.com/cidian/download/MacDict.dmg'
  name '有道词典'
  homepage 'http://cidian.youdao.com/index-mac.html'
  license :commercial

  app '有道词典.app'
end

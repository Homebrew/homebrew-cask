# encoding: UTF-8
cask :v1 => 'youdao' do
  version :latest
  sha256 :no_check

  url 'http://cidian.youdao.com/download/YoudaoDictForMac.dmg'
  appcast 'http://cidian.youdao.com/apps/macupdate/update.xml'
  homepage 'http://cidian.youdao.com/mac/'
  license :unknown    # todo: improve this machine-generated value

  app '有道词典.app'
end

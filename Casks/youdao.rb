# encoding: UTF-8
class Youdao < Cask
  url 'http://cidian.youdao.com/download/YoudaoDictForMac.dmg'
  appcast 'http://cidian.youdao.com/apps/macupdate/update.xml'
  homepage 'http://cidian.youdao.com/mac/'
  version 'latest'
  sha256 :no_check
  link '有道词典.app'
end

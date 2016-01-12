cask 'youdao' do
  version :latest
  sha256 :no_check

  url 'http://cidian.youdao.com/download/YoudaoDictForMac.dmg'
  appcast 'http://cidian.youdao.com/apps/macupdate/update.xml',
          :sha256 => 'f3145d1e20f38192abc9abdbb6bbdbdc770eedcef90853688a1dc08a4dcd01b3'
  name '有道词典'
  homepage 'http://cidian.youdao.com/mac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '有道词典.app'
end

cask 'youdao' do
  version :latest
  sha256 :no_check

  url 'http://cidian.youdao.com/download/YoudaoDictForMac.dmg'
  name '有道词典'
  appcast 'http://cidian.youdao.com/apps/macupdate/update.xml',
          :sha256 => '643a074d7fc5a53eda36001e3b310e369c5fa2bafcefcf343ab7adb39ea2b7e3'
  homepage 'http://cidian.youdao.com/mac/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '有道词典.app'
end

cask 'youdao' do
  version '1.0b2'
  sha256 '1d7ed89d2b77de4d1e45b854947df025aeea329ffcac91d7110db5e2dd0a2554'

  url 'http://cidian.youdao.com/download/YoudaoDictForMac.dmg'
  appcast 'http://cidian.youdao.com/apps/macupdate/update.xml',
          checkpoint: 'ab00c1a82410a13cf7b7f69e14f5f5a57bc854bf05da6f6e41e3d549e4c8dfc1'
  name '有道词典'
  homepage 'http://cidian.youdao.com/mac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '有道词典.app'
end

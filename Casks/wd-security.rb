cask 'wd-security' do
  version '2.0.0.30'
  sha256 'edc9f848d066cdec8521fd2b4f3bff23187b9f9c5640dab69c3575212b6ce7e7'

  url "http://download.wdc.com/wdapp/WD_Security_#{version.gsub('.', '_')}.zip"
  name 'WD Security'
  homepage 'http://www.wdc.com/en/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WD Security.app'
end

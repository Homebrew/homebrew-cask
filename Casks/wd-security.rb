cask 'wd-security' do
  version '2.0.0.30'
  sha256 'edc9f848d066cdec8521fd2b4f3bff23187b9f9c5640dab69c3575212b6ce7e7'

  url "http://download.wdc.com/wdapp/WD_Security_#{version.dots_to_underscores}.zip"
  name 'WD Security'
  homepage 'https://www.wdc.com/en/'

  app 'WD Security.app'
end

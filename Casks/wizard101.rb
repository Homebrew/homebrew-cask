cask 'wizard101' do
  version '1.11'
  sha256 'd01eb59b63219ca709a704d24bc641587e1690484d0d5d29a2d83a8d40f2e8de'

  url 'http://versionec.us.wizard101.com//Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          checkpoint: 'd3fc89aec186b91c8d3b01ee1152c9b7112f7638e5d7bba5ae89933ddb7e5233'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'

  app 'Wizard101.app'
end

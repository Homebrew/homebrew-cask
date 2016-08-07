cask 'wizard101' do
  version '1.10'
  sha256 'ec6029ad2d20067dee3f57bb8c8e7683650656c9baa77b44db9f8eb49fe497ae'

  url 'http://versionec.us.wizard101.com//Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com//Wizard101.xml',
          checkpoint: 'f752460bac62d1798d4faffc8ade196e703e3c70677427dca7f6f4b23bf358d4'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wizard101.app'
end

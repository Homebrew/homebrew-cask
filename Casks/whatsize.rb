cask 'whatsize' do
  version '5.3.2'
  sha256 '0b10293ba57e42914d67cdb331ceddbfdb6e2033069378a4f2a25acd8b5a4e34'

  url 'http://www.whatsizemac.com/software/whatsize6/whatsize.dmg'
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml',
          checkpoint: '279abde04434b0f20a846ad0498828042efe3e6cad2512f8fd0cf98340247866'
  name 'WhatSize'
  homepage 'http://whatsizemac.com/'
  license :commercial

  app 'WhatSize.app'
end

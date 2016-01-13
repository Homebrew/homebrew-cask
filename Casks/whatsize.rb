cask 'whatsize' do
  version :latest
  sha256 :no_check

  url 'http://www.whatsizemac.com/software/whatsize6/whatsize.dmg'
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml',
          :checkpoint => '279abde04434b0f20a846ad0498828042efe3e6cad2512f8fd0cf98340247866'
  name 'WhatSize'
  homepage 'http://whatsizemac.com/'
  license :commercial

  app 'WhatSize.app'
end

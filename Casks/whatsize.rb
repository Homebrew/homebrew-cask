cask 'whatsize' do
  version :latest
  sha256 :no_check

  url 'http://www.whatsizemac.com/software/whatsize6/whatsize.dmg'
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml',
          :checkpoint => '628bc03b5edad224040680f5399cbd508b9332d8c82f9f753bcedc028c892090'
  name 'WhatSize'
  homepage 'http://whatsizemac.com/'
  license :commercial

  app 'WhatSize.app'
end

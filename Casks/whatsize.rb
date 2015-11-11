cask :v1 => 'whatsize' do
  version :latest
  sha256 :no_check

  url 'http://www.whatsizemac.com/software/whatsize6/whatsize.dmg'
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml'
  name 'WhatSize'
  homepage 'http://whatsizemac.com/'
  license :commercial

  app 'WhatSize.app'
end

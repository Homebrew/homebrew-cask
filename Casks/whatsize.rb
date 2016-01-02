cask 'whatsize' do
  version :latest
  sha256 :no_check

  url 'http://www.whatsizemac.com/software/whatsize6/whatsize.dmg'
  appcast 'http://www.id-design.com/software/whatsize/release/notes.xml',
          :sha256 => '36834641d561994f6cbc1d6f4a82fb5d08d52639bf5e3919df440c255fd990ff'
  name 'WhatSize'
  homepage 'http://whatsizemac.com/'
  license :commercial

  app 'WhatSize.app'
end

cask 'whatsize' do
  version '6.6.3'
  sha256 '933dac86f177dd50805ad04edee1b633404cc203e82fd6430bad2b34531a828c'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize.dmg"
  appcast 'https://www.whatsizemac.com/software/whatsize6/release/notes.xml'
  name 'WhatSize'
  homepage 'https://whatsizemac.com/'

  app 'WhatSize.app'
end

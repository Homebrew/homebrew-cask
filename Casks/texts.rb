cask :v1 => 'texts' do
  version '0.22'
  sha256 'f034f63b6742417ca5a0763afe40233ca1b42d7e23df33d8a61b6ddfc180706f'

  url "http://www.texts.io/Texts-#{version}.dmg"
  name 'Texts'
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => 'c769657a0b1d6470676cba2d73b32d77be5afc98e3e01d09a68d6482bc65e5fd'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end

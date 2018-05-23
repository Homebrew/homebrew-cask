cask 'trenchbroom' do
  version '2.0.2'
  sha256 '1ec048bd602b8e6d0e944fe88f1c547aae28fc004b3312a9f1c0c7488a1af40b'

  # github.com/kduske/TrenchBroom/releases/download was verified as official when first introduced to the cask
  url "https://github.com/kduske/TrenchBroom/releases/download/v#{version}/TrenchBroom-MacOSX-v#{version}-Release.dmg"
  appcast 'https://github.com/kduske/TrenchBroom/releases.atom',
          checkpoint: '718180147efceea6ab7c2a6cbf682b72aa5be61fc7d8846830b2b17635070259'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end

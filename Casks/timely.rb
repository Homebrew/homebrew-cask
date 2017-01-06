cask 'timely' do
  version '0.4.3'
  sha256 '28e397b09767f1ab72e96827eee26a8d0fe2e1636420cc22f08ba89eafb890c2'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/osx64-v#{version}/Timely-#{version}.dmg"
  appcast 'https://github.com/Timely/desktop-releases/releases.atom',
          checkpoint: '012cf46727c665a5b7a29f7e9223297c8d2a3c225f8f765cf6b91c2658f98982'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end

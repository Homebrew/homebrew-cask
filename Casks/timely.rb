cask 'timely' do
  version '0.4.5'
  sha256 '732ca8669ce3390d5b9404bfb3ce06b30e0a20ef0a60da081624d22a1955c341'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/osx64-v#{version}/Timely-#{version}.dmg"
  appcast 'https://github.com/Timely/desktop-releases/releases.atom',
          checkpoint: '10058dde6d53d6ab0fa626266ffbe9ee7ab53172ed41bde843d700ea9eb5a5d4'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end

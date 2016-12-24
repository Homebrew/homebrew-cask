cask 'whatsdesktop' do
  version '1.8.0'
  sha256 '9f68154a382dc4306b440a254662a3efd65b9e4bbd8cfbc76b625e70e9afcbc2'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-#{version}.dmg"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom',
          checkpoint: '0758278df730ed99a5d76c51cca39d2f91abe345d615d09514b3d0504d40c22c'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'

  app 'WhatsDesktop.app'
end

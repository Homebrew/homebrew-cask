cask 'whatsdesktop' do
  version '1.7.0'
  sha256 '46b8d6dc33eecffb507ec9d9eaf2c6927e3f51370e2999945390f49d1d90db65'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom',
          checkpoint: '2a8b3bc900e72d9d95d0d50910ed1ad39d88a2cba0683c512dc2e41e9fe9989d'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'

  app 'WhatsDesktop.app'
end

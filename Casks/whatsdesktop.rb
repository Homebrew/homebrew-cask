cask 'whatsdesktop' do
  version '1.4.0'
  sha256 '4dcfdb4b918766a377751442c95ab9325c11ee9b4de089315991a66ddb1c1d9e'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom',
          :sha256 => 'e4ecd99fa82f9bfd32d6c64e853bedd1b6d91ca2e4abbe6bef31e5094e1f04e2'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end

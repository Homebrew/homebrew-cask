cask 'teseve' do
  version '0.5.0'
  sha256 'cd92eea036b83fa4733ec43a1ce69f3f3a562c153d9841348bdb5e75d43cdb4d'

  # github.com/teseve/teseve was verified as official when first introduced to the cask
  url "https://github.com/teseve/teseve/releases/download/#{version}/Teseve-#{version}-mac-x64.zip"
  appcast 'https://github.com/teseve/teseve/releases.atom',
          checkpoint: 'ee303125528b6dce68a182b0cc5e5b08a97907f39c46cd6da11bb41a0cd0a205'
  name 'Tèsèvè'
  homepage 'http://teseve.github.io/'
  license :public_domain

  auto_updates true

  app 'Teseve.app'

  zap delete: [
                '~/Library/Preferences/com.flatland.app.teseve.plist',
                '~/Library/Application Support/teseve',
              ]
end

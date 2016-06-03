cask 'teseve' do
  version '0.5.2'
  sha256 'c99a2032b0415eceba4938fa38d88fb1b27080ab27617ee2d5ed1dfb18570d87'

  # github.com/teseve/teseve was verified as official when first introduced to the cask
  url "https://github.com/teseve/teseve/releases/download/#{version}/Teseve-#{version}-mac-x64.zip"
  appcast 'https://github.com/teseve/teseve/releases.atom',
          checkpoint: '1792d451f9e91344138508bead99715324bc7b3288d73a3192245fdaf5979865'
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

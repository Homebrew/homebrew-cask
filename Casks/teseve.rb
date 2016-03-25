cask 'teseve' do
  version '0.4.0'
  sha256 'd5f1713b6f3155b46b4552bcfd777175b293990c0280bee1ebf4675be423fa3b'

  # github.com/teseve/teseve was verified as official when first introduced to the cask
  url "https://github.com/teseve/teseve/releases/download/#{version}/Teseve-#{version}-mac-x64.zip"
  appcast 'https://github.com/teseve/teseve/releases.atom',
          checkpoint: '4824632ace63e44e8b87947b761015f9911165f4204ccd61bdbf34608afa9635'
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

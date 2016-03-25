cask 'teseve' do
  version '0.4.0'
  sha256 'd5f1713b6f3155b46b4552bcfd777175b293990c0280bee1ebf4675be423fa3b'

  url 'https://github.com/teseve/teseve/releases/download/0.4.0/Teseve-0.4.0-mac-x64.zip'
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

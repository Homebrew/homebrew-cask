cask 'tokens' do
  version '1.5.2'
  sha256 '9654eeb499951e463fac5f29adc633f5996116a444d6a99ca4c095bf2bd46a18'

  url "http://resources.usetokens.com/download/#{version}/Tokens.app.zip"
  appcast 'http://api.usetokens.com/updates/stable',
          checkpoint: '44bc6b825238fc5b6ae48b87719e2a21fc43ada018ddcd257fc28c7dd9ca2811'
  name 'Tokens'
  homepage 'http://usetokens.com/'

  app 'Tokens.app'
end

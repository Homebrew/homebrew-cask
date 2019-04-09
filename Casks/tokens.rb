cask 'tokens' do
  version '1.6.5-71'
  sha256 '318a2d95ee8c7751c213ef9aab5f8574940e653ce9cb3ea897580350a23fe5d9'

  # peerassembly.net/apps/tokens was verified as official when first introduced to the cask
  url "https://peerassembly.net/apps/tokens/#{version}/Tokens.zip"
  appcast 'https://peerassembly.net/apps/tokens/stable.xml'
  name 'Tokens'
  homepage 'https://usetokens.com/'

  auto_updates true

  app 'Tokens.app'
end

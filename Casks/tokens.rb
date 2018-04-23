cask 'tokens' do
  version :latest
  sha256 :no_check

  # peerassembly.net/apps/tokens was verified as official when first introduced to the cask
  url 'http://peerassembly.net/apps/tokens/Tokens.zip'
  name 'Tokens'
  homepage 'http://usetokens.com/'

  app 'Tokens.app'
end

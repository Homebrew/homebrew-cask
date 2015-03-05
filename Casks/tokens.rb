cask :v1 => 'tokens' do
  version :latest
  sha256 :no_check

  url 'http://usetokens.com/latest'
  name 'Tokens'
  homepage 'http://usetokens.com/'
  license :closed

  app 'Tokens.app'
end

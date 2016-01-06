cask 'tokens' do
  version :latest
  sha256 :no_check

  url 'http://usetokens.com/latest'
  appcast 'http://api.usetokens.com/updates/stable',
          :sha256 => '87feb75f006cd8570bf7d11102e43576e7e6c9a3558454ebaf19376d587e3bc3'
  name 'Tokens'
  homepage 'http://usetokens.com/'
  license :closed

  app 'Tokens.app'
end

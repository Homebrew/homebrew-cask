cask :v1 => 'tokens' do
  version :latest
  sha256 :no_check

  url 'http://usetokens.com/latest'
  name 'Tokens'
  appcast 'http://api.usetokens.com/updates/stable',
          :sha256 => '87feb75f006cd8570bf7d11102e43576e7e6c9a3558454ebaf19376d587e3bc3'
  homepage 'http://usetokens.com/'
  license :closed

  app 'Tokens.app'
end

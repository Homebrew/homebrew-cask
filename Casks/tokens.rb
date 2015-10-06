cask :v1 => 'tokens' do
  version :latest
  sha256 :no_check

  url 'http://usetokens.com/latest'
  name 'Tokens'
  appcast 'http://api.usetokens.com/updates/stable',
          :sha256 => '1bec42f216386a4ef2201b4b1f842a2f9cf49854411dba8c13d48aa6a4aa70dd'
  homepage 'http://usetokens.com/'
  license :closed

  app 'Tokens.app'
end

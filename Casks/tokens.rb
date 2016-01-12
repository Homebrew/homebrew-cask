cask 'tokens' do
  version '1.5.1'
  sha256 '650e664084555b3b2d7cef8dcdb5fd0f471520ac8a1bcde42645e11593a51a52'

  url "http://resources.usetokens.com/download/#{version}/Tokens.app.zip"
  appcast 'http://api.usetokens.com/updates/stable',
          :sha256 => '51d915b42a68a23d614eaae84a85dad1067414f0d1af9833569dc4936bd10d92'
  name 'Tokens'
  homepage 'http://usetokens.com/'
  license :closed

  app 'Tokens.app'
end

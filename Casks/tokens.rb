cask 'tokens' do
  version '1.5.1'
  sha256 '650e664084555b3b2d7cef8dcdb5fd0f471520ac8a1bcde42645e11593a51a52'

  url "http://resources.usetokens.com/download/#{version}/Tokens.app.zip"
  appcast 'http://api.usetokens.com/updates/stable',
          :checkpoint => 'e536e3d8d23e01e5b387e32f5be24afb376b32e2617e354cf2cf89ed53c9fcea'
  name 'Tokens'
  homepage 'http://usetokens.com/'
  license :closed

  app 'Tokens.app'
end

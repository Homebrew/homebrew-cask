cask 'tokens' do
  version '1.5.1'
  sha256 '650e664084555b3b2d7cef8dcdb5fd0f471520ac8a1bcde42645e11593a51a52'

  url "http://resources.usetokens.com/download/#{version}/Tokens.app.zip"
  appcast 'http://api.usetokens.com/updates/stable',
          checkpoint: '2f4bd11922727463342201da26c6bbd71487f33774fd2d12b439c21238622a36'
  name 'Tokens'
  homepage 'http://usetokens.com/'
  license :closed

  app 'Tokens.app'
end

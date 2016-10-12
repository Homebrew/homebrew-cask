cask 'tokens' do
  version '1.5.3'
  sha256 'e7653f03f27c3d6053c51f40c79aff71e4ada4111aff43c3f80d2f41add54962'

  url "http://resources.usetokens.com/download/#{version}/Tokens.app.zip"
  appcast 'http://api.usetokens.com/updates/stable',
          checkpoint: 'c49298d7ef643e3d004164e1b8505ad2d170f387d46e179522ef574df3c1ed61'
  name 'Tokens'
  homepage 'http://usetokens.com/'

  app 'Tokens.app'
end

cask 'tokens' do
  version '1.6.3-68'
  sha256 'c9135ae7c5b6fff36857f5057eca67b052900cf062cc8226484c6b5b6e0cd5e2'

  # peerassembly.net/apps/tokens was verified as official when first introduced to the cask
  url "https://peerassembly.net/apps/tokens/#{version}/Tokens.zip"
  appcast 'https://peerassembly.net/apps/tokens/stable.xml',
          checkpoint: '96cf1a8dec3e8a96c7eff2a6d79e89f014afee33d57a18ae30ae1466d13774cb'
  name 'Tokens'
  homepage 'http://usetokens.com/'

  auto_updates true

  app 'Tokens.app'
end

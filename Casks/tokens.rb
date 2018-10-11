cask 'tokens' do
  version '1.6.4-69'
  sha256 'c677ebe19256191ee6bbb54ed59499fbef25faa9530eaa6b2ec4c8b51b262a9a'

  # peerassembly.net/apps/tokens was verified as official when first introduced to the cask
  url "https://peerassembly.net/apps/tokens/#{version}/Tokens.zip"
  appcast 'https://peerassembly.net/apps/tokens/stable.xml'
  name 'Tokens'
  homepage 'https://usetokens.com/'

  auto_updates true

  app 'Tokens.app'
end

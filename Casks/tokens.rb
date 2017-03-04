cask 'tokens' do
  version '1.5.4'
  sha256 '9b33639cdd9037d7c385432c3e2aabc0cce066002b5f3b767b82257f3cda167b'

  url "http://resources.usetokens.com/download/#{version}/Tokens.app.zip"
  appcast 'http://api.usetokens.com/updates/stable',
          checkpoint: 'e255134bf321cd7998ac78cb7bf87b29cca4134f840e11d502532b4faa765927'
  name 'Tokens'
  homepage 'http://usetokens.com/'

  app 'Tokens.app'
end

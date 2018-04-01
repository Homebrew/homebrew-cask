cask 'tokens' do
  version '1.5.4'
  sha256 '9b33639cdd9037d7c385432c3e2aabc0cce066002b5f3b767b82257f3cda167b'

  url "http://resources.usetokens.com/download/#{version}/Tokens.app.zip"
  appcast 'http://api.usetokens.com/updates/stable',
          checkpoint: 'd61bd5c28aeb1288b7e47d17456eb938182368935f54a77b973f3e5d1b645b1f'
  name 'Tokens'
  homepage 'http://usetokens.com/'

  app 'Tokens.app'
end

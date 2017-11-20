cask 'xmind-zen-beta' do
  version 'beta-201711192348'
  sha256 '961135889b51c2b5298eb24c4ad6a6fcf05403c5ba29bb44ea72ef3ea162ff0b'

  url 'https://www.xmind.net/zen-beta2/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: [
               '~/Library/Application Support/XMind ZEN',
             ]
end

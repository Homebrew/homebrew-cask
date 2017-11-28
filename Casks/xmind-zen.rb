cask 'xmind-zen' do
  version 'beta2'
  sha256 '961135889b51c2b5298eb24c4ad6a6fcf05403c5ba29bb44ea72ef3ea162ff0b'

  url "http://dl2.xmind.net/xmind-downloads/XMind-ZEN-Setup-#{version}.zip"
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end

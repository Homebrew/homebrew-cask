cask 'xmind-zen' do
  version 'beta4'
  sha256 'd101e634816db82f1ff156f64667bb33288fd852827b5ab058c780de3067d8b2'

  url "http://dl2.xmind.net/xmind-downloads/XMind-ZEN-Setup-#{version}.zip"
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end

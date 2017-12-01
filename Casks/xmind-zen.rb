cask 'xmind-zen' do
  version 'beta3'
  sha256 '07e26e3aac2a570a52fb63844b33146ceb57c825585bda12a1296aecfc114b48'

  url "http://dl2.xmind.net/xmind-downloads/XMind-ZEN-Setup-#{version}.zip"
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end

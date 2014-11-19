cask :v1 => 'xmind' do
  version '3.5.0'
  sha256 'd37d32ceb10b57a44c004dd96ab2e07da8d57f1e874d9a405015e52954618620'

  url "http://dl3.xmind.net/xmind-macosx-#{version}.201410310637.dmg"
  homepage 'http://www.xmind.net'
  license :unknown

  app 'XMind.app'
end

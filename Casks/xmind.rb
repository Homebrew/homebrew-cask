cask :v1 => 'xmind' do
  version '3.4.1'
  sha256 '0a1b9f833c117ced046a7ccee854cf4efcc9d489c12a126cb269b7dbefcd309a'

  url "http://dl2.xmind.net/xmind-downloads/xmind-macosx-#{version}.201401221918.dmg"
  homepage 'http://www.xmind.net'
  license :unknown

  app 'XMind.app'
end

cask 'typeit4me' do
  version '6.2.0b199'
  sha256 '39f8b6f4a8067b62bf140e22ff91a4fe571b75157a71f215526ac0731c78f83b'

  url "https://ettoresoftware.com/download/TypeIt4Me#{version}.zip"
  appcast 'https://ettoresoftware.com/download/TypeIt4MeAppcast.xml'
  name 'TypeIt4Me'
  homepage 'https://www.ettoresoftware.com/mac-apps/typeit4me/'

  auto_updates true

  app 'TypeIt4Me.app'
end

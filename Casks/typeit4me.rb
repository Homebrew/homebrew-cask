cask 'typeit4me' do
  version '5.5.3b106'
  sha256 '2d95b5b680b3ae89e8a4ed298fd41c72d65d5374f369be1bbb39c02a0e54f5e4'

  url "http://ettoresoftware.com/download/TypeIt4Me#{version}.zip"
  appcast 'http://ettoresoftware.com/download/TypeIt4MeAppcast.xml',
          checkpoint: '2d6aa7866ec74708c78c0fd4cc75d95ffda5e32ba77f23fb0beaeede5727ba1a'
  name 'TypeIt4Me'
  homepage 'http://www.ettoresoftware.com/mac-apps/typeit4me/'

  auto_updates true

  app 'TypeIt4Me.app'
end

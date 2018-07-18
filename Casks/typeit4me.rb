cask 'typeit4me' do
  version '6.0.4b149'
  sha256 '14fe8bb5f78b4e09cd4244792b6876fe7850f97c99478b9790c7f1c1043c8546'

  url "http://ettoresoftware.com/download/TypeIt4Me#{version}.zip"
  appcast 'http://ettoresoftware.com/download/TypeIt4MeAppcast.xml'
  name 'TypeIt4Me'
  homepage 'http://www.ettoresoftware.com/mac-apps/typeit4me/'

  auto_updates true

  app 'TypeIt4Me.app'
end

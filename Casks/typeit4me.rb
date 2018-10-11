cask 'typeit4me' do
  version '6.1.1b176'
  sha256 '07e2e0ab9c5a6c8df5753501b66090e493ad900a8c4fd4b403d0a7cc99d779bd'

  url "https://ettoresoftware.com/download/TypeIt4Me#{version}.zip"
  appcast 'https://ettoresoftware.com/download/TypeIt4MeAppcast.xml'
  name 'TypeIt4Me'
  homepage 'https://www.ettoresoftware.com/mac-apps/typeit4me/'

  auto_updates true

  app 'TypeIt4Me.app'
end

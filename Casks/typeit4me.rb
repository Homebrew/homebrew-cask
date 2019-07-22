cask 'typeit4me' do
  version '6.2.1b200'
  sha256 '84e758172de9fb5f61f4c604ecbf7bdaf71ae524240b3b598e23da22b88f0808'

  url "https://ettoresoftware.com/download/TypeIt4Me#{version}.zip"
  appcast 'https://ettoresoftware.com/download/TypeIt4MeAppcast.xml'
  name 'TypeIt4Me'
  homepage 'https://www.ettoresoftware.com/mac-apps/typeit4me/'

  auto_updates true

  app 'TypeIt4Me.app'
end

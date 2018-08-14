cask 'typeit4me' do
  version '6.0.5b156'
  sha256 'b1912aba43111bc9193e9dcbf3ff669a7543aba952bf3df5a40755d59dd151ac'

  url "https://ettoresoftware.com/download/TypeIt4Me#{version}.zip"
  appcast 'https://ettoresoftware.com/download/TypeIt4MeAppcast.xml'
  name 'TypeIt4Me'
  homepage 'https://www.ettoresoftware.com/mac-apps/typeit4me/'

  auto_updates true

  app 'TypeIt4Me.app'
end

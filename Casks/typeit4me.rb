cask 'typeit4me' do
  version '6.0.3b146'
  sha256 '692c66f4e3a486596a4fee7b804c5b882f70d70dfeeb0594a62a50076c0cd39a'

  url "http://ettoresoftware.com/download/TypeIt4Me#{version}.zip"
  appcast 'http://ettoresoftware.com/download/TypeIt4MeAppcast.xml',
          checkpoint: 'b22a352ffdf80fa6ab48488dc64bb3f94968fa875bc618a0964b88217ecb9944'
  name 'TypeIt4Me'
  homepage 'http://www.ettoresoftware.com/mac-apps/typeit4me/'

  auto_updates true

  app 'TypeIt4Me.app'
end

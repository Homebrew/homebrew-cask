cask :v1 => 'tg-pro' do
  version '2.7.1'
  sha256 'b44547b1c76eb69441c3f41eb3975301ec59c405b645f16d835c4243b82031eb'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end

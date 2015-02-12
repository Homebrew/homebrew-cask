cask :v1 => 'tg-pro' do
  version '2.5.1'
  sha256 'c1c387672fa88775b6049fc1fdec1e07f6726dc7b63be3881770ac1091102142'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end

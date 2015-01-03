cask :v1 => 'tg-pro' do
  version '2.4.1'
  sha256 'cc5ea0ef039f534af01d596d77363df102d8c37536ec722466305f7429b0f06c'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end

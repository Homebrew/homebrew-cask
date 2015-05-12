cask :v1 => 'tg-pro' do
  version '2.7.2'
  sha256 '6708a9762a62d30e2e83b37cd6c7597d0650e239b5b0f104ef85e5aa25f0c880'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end

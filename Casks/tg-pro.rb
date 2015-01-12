cask :v1 => 'tg-pro' do
  version '2.4.2'
  sha256 '6da914cf9dc062ad560ff50b42bd20bc353391f4d427b1b5335e9f3f9fa425b0'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end

cask :v1 => 'web-sharing' do
  version '1.0'
  sha256 '54115af3de0b36f25b42834e52704490f0a4a85aed3a77e5b46a1a4e61592097'

  url "http://dl.clickontyler.com/web-sharing/websharing_#{version}.zip"
  name 'Web Sharing'
  homepage 'https://clickontyler.com/web-sharing/'
  license :gratis

  prefpane 'Web Sharing.prefPane'
end

cask 'xfinity-wifi' do
  version :latest
  sha256 :no_check

  url 'http://wifi.xfinity.com/download_mac.php'
  name 'XFINITY WiFi'
  homepage 'https://wifi.xfinity.com/'
  license :gratis

  pkg 'XFINITY_WiFi.pkg'
end

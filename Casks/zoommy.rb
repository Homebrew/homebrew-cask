cask :v1 => 'zoommy' do
  version :latest
  sha256 :no_check

  url 'http://zoommyapp.com/zoommy.zip'
  name 'Zoommy'
  homepage 'https://zoommyapp.com/'
  license :gratis

  app 'Zoommy.app'
end

cask :v1 => 'theremin' do
  version '0.7'
  sha256 '809d0f7527d072a43f33b9e1088dc2387e08bb1a3696bb60bfd8e82b8853102d'

  # nn.lv is the official download host per the vendor homepage
  url 'http://f.nn.lv/ms/l5/29/Theremin.app.zip'
  appcast 'http://theremin.amd.co.at/appcastProfileInfo.php',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Theremin'
  homepage 'https://github.com/TheStalwart/Theremin'
  license :oss

  app 'Theremin.app'
end

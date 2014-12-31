cask :v1 => 'theremin' do
  version '0.7'
  sha256 '809d0f7527d072a43f33b9e1088dc2387e08bb1a3696bb60bfd8e82b8853102d'

  url 'http://f.nn.lv/ms/l5/29/Theremin.app.zip'
  appcast 'http://theremin.amd.co.at/appcastProfileInfo.php',
          :sha256 => '407e28c21827df8a17eb9ccf4d01c33f01b98f554cf33f8ffae89cdaf9e77a33'
  homepage 'https://github.com/TheStalwart/Theremin'
  license :oss

  app 'Theremin.app'
end

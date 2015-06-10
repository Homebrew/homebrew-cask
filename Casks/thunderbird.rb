cask :v1 => 'thunderbird' do
  version '31.7.0'
  sha256 '0c1059adb32dc78dd3597e651f91d57288698e26a1845b1f0d77ecc3ca7b1228'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

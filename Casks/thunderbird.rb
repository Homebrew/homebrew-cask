cask :v1 => 'thunderbird' do
  version '31.6.0'
  sha256 '9c99eaf11a97c3ee17ae04b73271877d410e9af2b6134b0358c5d94c58f2818e'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/en-US/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

cask :v1 => 'thunderbird' do
  version '38.1.0'
  sha256 '41ab11b8c5d5ef8ab09be16efcd8097b417d2532dc903d5983e55d7ac67fb827'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

cask :v1 => 'thunderbird' do
  version '38.0.1'
  sha256 'f2c9b8814b2be676580c2a03687b5ceea641ac19f2e72db70daf724dc7f755a4'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

cask :v1 => 'thunderbird' do
  version '38.2.0'
  sha256 '22fbba726dcb409b5ad48c35f02de7fe7544193b3a9faa108f4c85a38f20ae03'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

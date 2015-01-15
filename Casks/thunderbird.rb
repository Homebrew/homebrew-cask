cask :v1 => 'thunderbird' do
  version '31.4.0'
  sha256 '6de56ad6d215e3505afa376834cf251e1a1d0d4d4d1d570cfb507afefd164490'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  homepage 'http://www.mozilla.org/en-US/thunderbird/'
  license :oss

  app 'Thunderbird.app'
end

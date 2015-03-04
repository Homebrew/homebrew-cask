cask :v1 => 'thunderbird' do
  version '31.5.0'
  sha256 '5cec9186419853d902e0e61a52c20d679b27812b5a5e631d31ecbe5917b47ea1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  homepage 'http://www.mozilla.org/en-US/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end

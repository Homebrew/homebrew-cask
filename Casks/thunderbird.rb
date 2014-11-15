cask :v1 => 'thunderbird' do
  version '31.2.0'
  sha256 '4d6a9bedacda5e31ae40c2dfc6885fffa9283b052f25507313b25d87bb83daca'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  homepage 'http://www.mozilla.org/en-US/thunderbird/'
  license :oss

  app 'Thunderbird.app'
end

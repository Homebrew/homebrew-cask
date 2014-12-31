cask :v1 => 'thunderbird' do
  version '31.3.0'
  sha256 'b420b7b04cde0c57645bf2ae0f8b9fc507e854f82690b26551a54c17518885a6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  homepage 'http://www.mozilla.org/en-US/thunderbird/'
  license :oss

  app 'Thunderbird.app'
end

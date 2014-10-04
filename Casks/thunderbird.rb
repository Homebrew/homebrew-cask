class Thunderbird < Cask
  version '31.1.2'
  sha256 '491fc8c061055a9e1f52961c488ea84f7f2fcf633a41a983e4c8985859db75af'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  homepage 'http://www.mozilla.org/en-US/thunderbird/'
  license :oss

  app 'Thunderbird.app'
end

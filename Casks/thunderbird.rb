class Thunderbird < Cask
  version '31.1.1'
  sha256 '1cccb367aefb95912fdc735a87095e728668ef269047e4813812b469431b2e57'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  homepage 'http://www.mozilla.org/en-US/thunderbird/'

  link 'Thunderbird.app'
end

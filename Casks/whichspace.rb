cask 'whichspace' do
  version '0.2.0'
  sha256 '8cbb5d9517b965e7757abb417aa4d0c27e13e15853574cfc2bcfcc2deeab0567'

  url "https://github.com/gechr/WhichSpace/releases/download/v#{version}/WhichSpace.app.zip"
  appcast 'https://github.com/gechr/WhichSpace/releases.atom',
          checkpoint: '86864d35045fab06c1997228f04b16b66c84d803291fb807d3f35f55ab060eef'
  name 'WhichSpace'
  homepage 'https://github.com/gechr/WhichSpace'

  depends_on macos: '> :yosemite'

  app 'WhichSpace.app'
end

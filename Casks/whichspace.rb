cask 'whichspace' do
  version '0.2.4'
  sha256 'd062876e0194438dab6a1dcc9b19df01f7c6ee204e9218579e9e21c085883484'

  url "https://github.com/gechr/WhichSpace/releases/download/v#{version}/WhichSpace.zip"
  appcast 'https://github.com/gechr/WhichSpace/releases.atom',
          checkpoint: 'fe1751d86fc31f18f159b02fa85c5ceffdf7ccc04c9e8dcbb589f56cfd3d01b3'
  name 'WhichSpace'
  homepage 'https://github.com/gechr/WhichSpace'

  depends_on macos: '> :yosemite'

  app 'WhichSpace.app'
end

cask 'teatv' do
  version '1.5.0'
  sha256 '92ed3632f5bd5baf8b25700f09db2d05d59e74f81277b88a89c7b0e4d3758b55'
  
  # github.com/TeaTV/TeaTV-macOS was verified as official when first introduced to the cask
  url 'https://github.com/TeaTV/TeaTV-macOS/releases/download/v#{version}/TeaTV.v#{version}.dmg'
  appcast 'https://github.com/TeaTV/TeaTV-macOS/releases.atom'
  name 'TeaTV macOS Desktop App'
  homepage 'http://teatv.net/'

  app 'TeaTV.app'
end

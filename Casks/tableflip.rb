cask 'tableflip' do
  version '1.0.3'
  sha256 'df0634628f0d451f0bbe8ae9b7efa7cadd51d815986a3866a60f85a161ca0e1b'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast 'https://update.christiantietze.de/tableflip/v1/release.xml',
          checkpoint: '97881da35c6d0e9e45d6d7acebcf487840c41ae9cf14aea6166dac0c7e16ce65'
  name 'TableFlip'
  homepage 'http://tableflipapp.com'

  auto_updates true

  app 'TableFlip.app'
end

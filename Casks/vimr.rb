cask 'vimr' do
  version '0.14.0-181'
  sha256 '5dfcccc20efb00f9e8c3a5a572c199379fa6ad7af5bd7b42763b0e1c9d1a1ef3'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '46f2c429b566f5a3b58952898346bfc1468950c3ed5dd164338b177329f0eecd'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end

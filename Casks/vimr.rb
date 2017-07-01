cask 'vimr' do
  version '0.17.0-213'
  sha256 'efa3cbae69ac1d66a4b3646b960007a799e53504072cef7264bcfc841e9d94ef'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '2ddc72fed692f4dcf73915eb034ce68205c433bcc50cb3289386fbc21a4cefcb'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"
end

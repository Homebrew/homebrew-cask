cask 'veonim' do
  version '0.13.3'
  sha256 'a4cf9d64b8bf39446160d223bd5265491e562e05cbc1c24afe591e4a1d8f5191'

  url "https://github.com/veonim/veonim/releases/download/#{version}/veonim-#{version}-mac.zip"
  appcast 'https://github.com/veonim/veonim/releases.atom'
  name 'veonim'
  homepage 'https://github.com/veonim/veonim'

  app 'veonim.app'
end

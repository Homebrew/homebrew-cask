cask 'trufont' do
  version '0.4.0'
  sha256 '05a3b3b9b9188dfe7af9fc7c3d19dc301e7c877ec249dce7f01ac183e7a8af27'

  url "https://github.com/trufont/trufont/releases/download/#{version}/TruFont.app.zip"
  appcast 'https://github.com/trufont/trufont/releases.atom',
          checkpoint: '0d89b0382b94ce03d1b09b053773413259850682263fe0f0fe06b1c3efd240fa'
  name 'TruFont'
  homepage 'https://trufont.github.io/'
  license :oss

  app 'TruFont.app'
end

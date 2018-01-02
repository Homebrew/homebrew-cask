cask 'webponize' do
  version '2.1.0'
  sha256 'ce394e91d07f636571a2a21cf183993ad9170794877e6744148ff1faf0ded2b3'

  # github.com/webponize/webponize was verified as official when first introduced to the cask
  url "https://github.com/webponize/webponize/releases/download/v#{version}/WebPonize.app.zip"
  appcast 'https://github.com/webponize/webponize/releases.atom',
          checkpoint: '23acecb403ea619bcce7df816eefe9dea35d543958e1b339cee2d3d3081a6ca8'
  name 'WebPonize'
  homepage 'https://webponize.org/'

  app 'WebPonize.app'
end

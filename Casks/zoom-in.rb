cask 'zoom-in' do
  version '1.0.3'
  sha256 'd27cd9bd969ef252537dd7d50175739021781e80219072159211786527e74864'

  # github.com/nothingmagical/ZoomIn/ was verified as official when first introduced to the cask
  url "https://github.com/nothingmagical/ZoomIn/releases/download/v#{version}/ZoomIn-#{version}.zip"
  appcast 'https://github.com/nothingmagical/ZoomIn/releases.atom'
  name 'Zoom In'
  homepage 'https://zoom-in.app/'

  depends_on macos: '>= :mojave'

  app 'Zoom In.app'

  zap trash: [
               '~/Library/Application Scripts/com.nothingmagical.zoom-in',
               '~/Library/Containers/com.nothingmagical.zoom-in',
             ]
end

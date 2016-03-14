cask 'wwdc' do
  version '3.1'
  sha256 '06ea52cfe18f8f72a79d9c944af7b32f9da0aa2e96eb662d5aa28047ec606044'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '8a21858bad2dadf7f686251993c918df986a5a66c3e46230e7a442c1d87cefb0'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  app 'WWDC.app'
end

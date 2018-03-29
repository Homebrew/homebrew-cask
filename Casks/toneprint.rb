cask 'toneprint' do
  version '3.1.03.1526,7765018'
  sha256 '0f965fb12666280ee345021b5951f9d5855cfe336ce7e786acba0b1d17dfe2b7'

  url "http://cdn-downloads.tcelectronic.com/media/#{version.after_comma}/toneprint-#{version.before_comma.no_dots}.dmg"
  name 'TonePrint Editor'
  homepage 'https://www.tcelectronic.com/toneprint-editor/support/'

  app 'TonePrint.app'
end

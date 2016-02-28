cask 'toneprint' do
  version '3.1'
  sha256 :no_check

  url 'http://cdn-downloads.tcelectronic.com/media/5607727/toneprint-3100-r1373.dmg'
  name 'TonePrint Editor'
  homepage 'http://www.tcelectronic.com/toneprint-editor/support/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TonePrint.app'
end

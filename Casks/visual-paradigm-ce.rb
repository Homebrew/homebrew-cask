cask 'visual-paradigm-ce' do
  version '15.0,20180801'
  sha256 '5468d021e2b340180babbf8d1b9b40bff9b5ae1e4ebe01398dae96a26b018f54'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

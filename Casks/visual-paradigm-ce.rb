cask 'visual-paradigm-ce' do
  version '15.2,20190501'
  sha256 'a838d37c4e99c071e8951b4c51534f4afd29dec8de9472be122a08d6f37901f4'

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

cask 'visual-paradigm-ce' do
  version '14.2,20171103'
  sha256 '928b3a504f613d17046add038aac8c3b51c4f558b41630aa8d68dfcff4bab096'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html',
          checkpoint: '0faa8a7e1b7d77130add1edd6d95a6795fc4a113d2583ef7d65578233309b945'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

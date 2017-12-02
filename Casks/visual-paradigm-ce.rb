cask 'visual-paradigm-ce' do
  version '14.2,20171201'
  sha256 '6bfffd23da5fa7c78a45ce009870da4c98854dfa4249e7cdef08d43e09526782'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html',
          checkpoint: '90526a99cb4eddc50c73f702eb27f3ef936a15500384c300afe97831c401de96'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

cask 'visual-paradigm-ce' do
  version '14.1,20170519'
  sha256 '4c3e86c01fd8eb8d81f818a43c56c59b4dcf0c45bf8c62627cbbab0bd351abdb'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

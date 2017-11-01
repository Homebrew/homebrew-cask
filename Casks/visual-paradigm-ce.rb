cask 'visual-paradigm-ce' do
  version '14.2,20171007'
  sha256 '5d48430ea1586081c81a898885f545e17178a99959d2fd9ff633ec44bebd5302'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

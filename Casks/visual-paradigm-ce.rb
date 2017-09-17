cask 'visual-paradigm-ce' do
  version '14.2,20170932'
  sha256 '828a52bd92438ac0a8f300ec9ad2788eca1b092a5dfcf4180d154075b8a589d0'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

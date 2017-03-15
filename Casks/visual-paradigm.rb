cask 'visual-paradigm' do
  version '14.0,20170121'
  sha256 '193001c757b5876cc91c8799a6bd9ae7809b2d27a9d804713f2d14740ac6905a'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

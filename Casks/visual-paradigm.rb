cask 'visual-paradigm' do
  version '14.0,20170302'
  sha256 '2d925c4aaa6de220a113d4554b2f686801cec014307a51a89c077b13042e2d6e'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

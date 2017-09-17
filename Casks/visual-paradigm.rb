cask 'visual-paradigm' do
  version '14.2,20170932'
  sha256 'bd6c947ddf6e3f1235133cc2bba7ef52b07a0286ee7af19806a7be26ce816709'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

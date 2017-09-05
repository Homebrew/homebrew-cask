cask 'visual-paradigm' do
  version '14.1,20170902'
  sha256 '04c1ede2b854584cf13069335541c3d8c43353e290921584cff39f59432a4af6'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

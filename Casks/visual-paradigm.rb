cask 'visual-paradigm' do
  version '14.1,20170519'
  sha256 '5f70171ec54b2c15d5ab740e89f88e83a5145e8299cdd3d1358ad2ce3f4cc5e5'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

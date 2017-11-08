cask 'visual-paradigm' do
  version '14.2,20171103'
  sha256 '9aa65a0b93b09027ff56715093f2f4a5a467697e6f26baf7775c86cb472ba84d'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

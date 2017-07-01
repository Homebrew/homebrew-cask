cask 'visual-paradigm' do
  version '14.1,20170606'
  sha256 '0daad5802dd41790fe9b36c0b96e77429ec18a45eeb735c457057246e639ad54'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

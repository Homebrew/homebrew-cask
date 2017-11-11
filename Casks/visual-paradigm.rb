cask 'visual-paradigm' do
  version '14.2,20171103'
  sha256 '9aa65a0b93b09027ff56715093f2f4a5a467697e6f26baf7775c86cb472ba84d'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          checkpoint: '26e0c40bee471aefb63cad8069a355c21f306f9f4d5d4c35a6d67eb40f83c844'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

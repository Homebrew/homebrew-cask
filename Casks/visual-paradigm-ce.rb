cask 'visual-paradigm-ce' do
  version '15.0,20180501'
  sha256 '97bfba60f93feac070f44e0a0844d268d65ff3de795a539b037df11fc6cd9509'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html',
          checkpoint: '01cc18443a34c3703f9985a5f16ea970e63c1622ea1decdaa4df79ba6a182044'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

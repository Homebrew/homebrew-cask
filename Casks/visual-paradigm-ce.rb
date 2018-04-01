cask 'visual-paradigm-ce' do
  version '15.0,20180231'
  sha256 'aa1ed2089072acddb5c62f7c3de3b620014498add06324f79ddbc252ddfebbf7'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html',
          checkpoint: '240fdeee3df825ad38469edd2909e1d0e348f2d388445d19b81a379cb5479cf8'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

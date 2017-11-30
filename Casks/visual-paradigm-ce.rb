cask 'visual-paradigm-ce' do
  version '14.2,20171107'
  sha256 '56e2914e48437ed688fee9e8bdcf121855aa983b6a5467f6d5d8a608e992fa5f'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html',
          checkpoint: '4a241cbf4ee48c25dfcc2a5b86fbb28b25a552b34f31447a33d6c66712fd49ab'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

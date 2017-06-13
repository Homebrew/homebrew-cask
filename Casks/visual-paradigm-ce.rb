cask 'visual-paradigm-ce' do
  version '14.1,20170601'
  sha256 'bdd1c9223fad18a23e7d8218e171edcb5c7e84681a9d5b08b7691ff081765117'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

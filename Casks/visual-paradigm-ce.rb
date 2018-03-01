cask 'visual-paradigm-ce' do
  version '14.2,20180202'
  sha256 '22ba0a6311ffc3eca43a7b30e28a580f643b8b1509e606620e8be5fbbe879809'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html',
          checkpoint: '81016145e7e9a9168cbf9a7e74502f17b870fad717616e0f0f37d54ab7dfe3a2'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

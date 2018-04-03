cask 'visual-paradigm-ce' do
  version '15.0,20180401'
  sha256 '57cccbccab79ed8d68526f67db2e676beddd318d5f76b64937de1efc14105722'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://ca1.visual-paradigm.com/visual-paradigm/vpce15.0/20180401/checksum.html',
          checkpoint: '9b577e6b55159f4020e176554943e972b951ee2d80563232e4ffa812f85f10ef'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end

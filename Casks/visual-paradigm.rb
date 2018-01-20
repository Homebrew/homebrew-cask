cask 'visual-paradigm' do
  version '14.2,20171201'
  sha256 'ebad8a53ffa0aef5832a4b5fddf15d785184af809626e90d2454322f7d4c3de8'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          checkpoint: '54c7cf65c759b7aadda16e469fce265d841f50b35f68cd9ad640264956a680d0'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

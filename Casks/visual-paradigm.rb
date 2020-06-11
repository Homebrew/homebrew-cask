cask 'visual-paradigm' do
  version '16.1,20200601'
  sha256 'de5355dee8040fb3902fa58501e65ba92df25d3ca3a51124506a6268ee9f0199'

  url "https://eu8.dl.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.visual-paradigm.com/downloads/vp/checksum.html',
          must_contain: "#{version.before_comma}/#{version.after_comma}"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end

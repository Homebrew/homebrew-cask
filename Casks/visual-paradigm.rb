cask "visual-paradigm" do
  version "16.2,20200801"
  sha256 "bdf5389ec0efca0f14d1c3d2da49fbc1e98fb6d27eaae746f838aa58b97c745d"

  url "https://eu8.dl.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.visual-paradigm.com/downloads/vp/checksum.html",
          must_contain: "#{version.before_comma}/#{version.after_comma}"
  name "Visual Paradigm"
  homepage "https://www.visual-paradigm.com/"

  app "Visual Paradigm.app"
end

cask "visual-paradigm" do
  version "16.2,20201010"
  sha256 "cf9c78569d9f609a29132c8a1e519e813a7315269b10ae9d266689b050a4c0f2"

  url "https://eu8.dl.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.visual-paradigm.com/downloads/vp/checksum.html",
          must_contain: "#{version.before_comma}/#{version.after_comma}"
  name "Visual Paradigm"
  homepage "https://www.visual-paradigm.com/"

  app "Visual Paradigm.app"
end

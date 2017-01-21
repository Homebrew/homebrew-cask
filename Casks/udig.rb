cask 'udig' do
  version '2.0.0.RC1'
  sha256 '72e5216ec754407b317f1e517f3a6fe6b04fc19e658ab4d09c1d4f9b6e040ee6'

  url "http://udig.refractions.net/files/downloads/udig-#{version}.macosx.cocoa.x86_64.dmg"
  name 'uDig'
  homepage 'http://udig.refractions.net/'

  suite 'udig'
end

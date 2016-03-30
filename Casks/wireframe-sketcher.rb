cask 'wireframe-sketcher' do
  version :latest
  sha256 :no_check

  url 'http://wireframesketcher.com/downloads/WireframeSketcher-latest-macosx.zip'
  name 'WireframeSketcher'
  homepage 'http://wireframesketcher.com/'
  license :closed

  app 'WireframeSketcher.app'
end

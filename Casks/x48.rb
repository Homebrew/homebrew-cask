cask :v1 => 'x48' do
  # note: "48" is not a version number, but an intrinsic part of the product name
  version '0.6.4'
  sha256 '21184fceec8fd471d034932ac9b49f41c98cd5d730fa3fb02ccf0bcf02951f70'

  url "https://sites.google.com/a/sharkus.com/sharkus-com/Home/x48-#{version}%20osx.zip"
  homepage 'http://blog.sharkus.com/2012/08/osx-hp48-emulators.html'
  license :unknown

  app "x48-#{version} osx/x48.app"

  depends_on :x11 => true
end

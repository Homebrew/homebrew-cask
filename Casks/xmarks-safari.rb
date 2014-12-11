cask :v1 => 'xmarks-safari' do
  version '2.0.18'
  sha256 'f64018d51cdb24bb1e6861d04b8f49b6cd88c26c5369f1ad877e9c51b0abe04e'

  url "https://static.xmarks.com/clients/safari/xmarks_for_safari_#{version}.dmg"
  homepage 'http://www.xmarks.com/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Xmarks for Safari Installer.pkg'

  uninstall :pkgutil => [
                         'com.xmarks.XmarksForSafari.pkg',
                         'com.xmarks.XmarksPreferencePane.pkg',
                        ]
end

cask 'tinyumbrella' do
  version '9.3.4'
  sha256 '2d04d6503c6e130a43615d6f59be0092fb2d5300b4f414c5c36f0c60bffee3ff'

  # tinydev.space was verified as official when first introduced to the cask
  url "http://tinydev.space/downloads/#{version.dots_to_underscores}/tinyumbrella_macos_#{version.dots_to_underscores}_AppOnly_InstalledJRE.dmg"
  name 'TinyUmbrella'
  homepage 'https://www.firmwareumbrella.com/'

  app 'TinyUmbrella.app'

  caveats do
    depends_on_java
  end
end

cask 'tinymediamanager' do
  version '2.9.12_597414a'
  sha256 '1acf599443127313bd64bdd8edefc9818e5da605441c2c9ba73f0cff26171193'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: '3b8ca44a35171150391992ab54c00c200be05401bff6c676b712c2747d2334d3'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java '7+'
  end
end

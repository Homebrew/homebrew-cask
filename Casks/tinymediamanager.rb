cask 'tinymediamanager' do
  # NOTE! Update depends_on_java when updating the version.
  version '2.9.14_096b083'
  sha256 'd575154fa03d4b4b329cbea09d74c9ed38f60c01950b56342fb17908ad20cf60'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    # The Java dependency should be relaxed to 8+ on the next release.
    # Keeping it at 8 for this version only.
    # See https://github.com/tinyMediaManager/tinyMediaManager/pull/437
    depends_on_java '8'
  end
end

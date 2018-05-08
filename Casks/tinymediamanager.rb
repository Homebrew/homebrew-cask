cask 'tinymediamanager' do
  version '2.9.11_14460b3'
  sha256 '0e64ebe67bd9a7c663d68785bf84c20b3202133fda5343525d54aacd856dc01e'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: 'a257ae7893cb581b8b80b1329215e1c03992091f203142e69b7ae2dfe1a97802'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end

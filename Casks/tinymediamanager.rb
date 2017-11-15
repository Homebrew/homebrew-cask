cask 'tinymediamanager' do
  version '2.9.5_1bf3695'
  sha256 '2056707e47746c5aa3c568fe264f1534a44eed9206e774aefd86921557d49552'

  url "https://release.tinymediamanager.org/dist/tmm_#{version}_mac.zip"
  appcast 'https://release.tinymediamanager.org/',
          checkpoint: 'c4d3197a686e085fe1052b4fa26d024557cd64e256c190344ab75a57f7f2cab0'
  name 'tinyMediaManager'
  homepage 'https://www.tinymediamanager.org/'

  app 'tinyMediaManager.app'

  caveats do
    depends_on_java('7+')
  end
end

cask 'textsoap' do
  version '7.4.3'
  sha256 'ecb88cb6c2cc6fe873a1fccdd38fb6040f2721e3440f98f513b376a360d91f20'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: 'ddbb0073e1116c64c75620c2fe43bd7af1befc07e82459a3cb614c92a294579d'
  name 'TextSoap'
  homepage 'http://www.unmarked.com/textsoap/'
  license :commercial

  app "textsoap#{version.major}.app"

  postflight do
    suppress_move_to_applications
  end
end

cask 'zoc' do
  version '7.17.3'
  sha256 '510b081c89c7559b8bf1bf942f84e8146c1ad6e06a3f11c94b3d128dbe4c068e'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'd67e2bb91ea26ecef29f5a6a369eb2addcb3932692db29c59638f5f64871fc43'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end

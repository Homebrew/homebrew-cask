cask 'tifig' do
  version '0.7.0-201708110628'
  sha256 '5e34a2271adc0aa70cab11b46d73c4fd838799b278939f3cb856305932061dec'

  # tifig-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tifig-downloads.s3.amazonaws.com/tifig-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.tifig.net/download/',
          checkpoint: 'ed1edfbbda20e164397fe91f2f14cf2d14a14a7f5a24620158fb1a54fa84e1ee'
  name 'Tifig'
  homepage 'https://www.tifig.net/'

  app 'Tifig.app'
end

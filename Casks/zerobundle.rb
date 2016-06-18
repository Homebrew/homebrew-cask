cask 'zerobundle' do
  version '0.1.1'
  sha256 'a8bffd28471aae1fc70098700af9cd84561a0d0f2e053b32504ae0f06388a47e'

  # zeronet.io and https://github.com/HelloZeroNet/ZeroBundle were verified as official when first introduced to the cask
  url "https://github.com/HelloZeroNet/ZeroBundle/releases/download/#{version}/ZeroBundle-v#{version}.zip"
  appcast 'https://github.com/HelloZeroNet/ZeroBundle/releases.atom'
  name 'ZeroBundle'
  homepage 'https://zeronet.io/'
  license :gpl # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  suite 'ZeroNet'
end

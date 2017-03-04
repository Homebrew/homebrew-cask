cask 'thong' do
  version '1.1'
  sha256 '87e5f3dc6fa85d039d761507aba13e5bc90578940412420d24fb621cfd4fc2b6'

  # fousa-apps.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fousa-apps.s3.amazonaws.com/thong/thong-#{version}.dmg"
  name 'Thong'
  homepage 'http://thong.fousa.be/'

  qlplugin 'Thong.qlgenerator'
end

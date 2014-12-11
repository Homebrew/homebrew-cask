cask :v1 => 'thong' do
  version '1.1'
  sha256 '87e5f3dc6fa85d039d761507aba13e5bc90578940412420d24fb621cfd4fc2b6'

  url "https://fousa-apps.s3.amazonaws.com/thong/thong-#{version}.dmg"
  homepage 'http://thong.fousa.be/'
  license :unknown    # todo: improve this machine-generated value

  qlplugin 'Thong.qlgenerator'
end

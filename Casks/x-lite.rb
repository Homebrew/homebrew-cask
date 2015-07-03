cask :v1 => 'x-lite' do
  version 'X-Lite_4.8.4_76590'
  sha256 'a9ee144dd33616404a0ce1499c9e9004b70689fef285568c94f99767db87196e'

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://counterpath.s3.amazonaws.com/downloads/X-Lite_4.8.4_t-xlite484-20150526-4800f_76590.dmg'
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite/'
  license :commercial

  app 'X-Lite.app'
end

cask :v1 => 'x-lite' do
  version '4.6.1_73074'
  sha256 'a14f577a1af1d0c81428065d0b94f9a5ea0f7886c1c2c4442ae050a8c497b297'

  url 'https://counterpath.s3.amazonaws.com/downloads/X-Lite_4.6.1_t-xlite-20140514-all-4610f_73074.dmg'
  homepage 'http://www.counterpath.com/x-lite.html'
  license :unknown    # todo: improve this machine-generated value

  app 'X-Lite.app'
end

cask :v1 => 'x-lite' do
  version '4.6.1_73074'
  sha256 'a14f577a1af1d0c81428065d0b94f9a5ea0f7886c1c2c4442ae050a8c497b297'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://counterpath.s3.amazonaws.com/downloads/X-Lite_4.6.1_t-xlite-20140514-all-4610f_73074.dmg'
  name 'X-Lite'
  homepage 'http://www.counterpath.com/x-lite.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'X-Lite.app'
end

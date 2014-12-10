cask :v1 => 'torpedo' do
  version :latest
  sha256 :no_check

  url 'https://usetorpedo.com/app/mac/download'
  homepage 'https://usetorpedo.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Torpedo.app'
end

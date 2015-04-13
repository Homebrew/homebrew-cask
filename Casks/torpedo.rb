cask :v1 => 'torpedo' do
  version :latest
  sha256 :no_check

  url 'https://usetorpedo.com/app/mac/download'
  homepage 'https://usetorpedo.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Torpedo.app'
end

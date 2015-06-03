cask :v1 => 'trim-enabler' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/cindori/TrimEnabler.dmg'
  appcast 'http://cindori.org/trimenabler/updates/update.xml'
  name 'Trim Enabler'
  homepage 'https://www.cindori.org/software/trimenabler/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Trim Enabler.app'
end

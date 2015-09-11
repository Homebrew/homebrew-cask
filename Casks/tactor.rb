cask :v1 => 'tactor' do
  version :latest
  sha256 :no_check

  # dropbox is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/Tactor.zip'
  name 'Tactor'
  appcast 'https://onflapp.appspot.com/tactor',
          :sha256 => 'de6620c8fd971681e356f2c24280ae9d38d09b78cafd2f25593fe50a235fd997'
  homepage 'https://onflapp.wordpress.com/tactor/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tactor.app'
end

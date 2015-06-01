cask :v1 => 'firetask' do
  version '4.7'
  sha256 '4b1f6fbdaf441f84df8e27534517dbdb0a92a6815f39be7d6182409b9130b661'

  url 'http://downloads.firetask.com/firetask-mac/Firetask-Mac.dmg'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :closed    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Firetask.app'
end

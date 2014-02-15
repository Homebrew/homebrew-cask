class ToxPoison < Cask
  url 'http://jenkins.tox.im/job/Poison_OS_X/lastSuccessfulBuild/artifact/arc/poison-with-extras.zip'
  homepage 'http://tox.im'
  version 'latest'
  no_checksum
  link 'poison-with-extras/Poison.app'
  link 'poison-with-extras/Silica.app'
  link 'poison-with-extras/Hibiki.app'
end

class Vuescan < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://www.hamrick.com/files/vuex6494.dmg'
    sha256 'af323bf91f52f093dd9ef9385ef734260917f539a3af9037b9a870008b3e4e91'
  else
    url 'http://www.hamrick.com/files/vuex3294.dmg'
    sha256 'aee2583a970301333acb6be8e2eb828f5513101c167c6a99b7ff115bd3f2ee83'
  end
  homepage 'http://www.hamrick.com'
  version '9.4.27'
  link 'VueScan.app'
end

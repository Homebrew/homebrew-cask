class Xampp < Cask
	url 'http://softlayer-dal.dl.sourceforge.net/project/xampp/XAMPP%20Mac%20OS%20X/1.8.3/xampp-osx-1.8.3-2-installer.dmg'
	homepage 'http://www.apachefriends.org/index.html'
	version '1.8.3.2'
	sha1 '541c6de82ebd508c1a45175dc7f0ad1952647d11'
	caveats do
		manual_installer 'xampp-osx-1.8.3-2-installer.app'
	end
end

module Cask::Actions
  def linkapps
    Pathname.glob("#{destination_path}/**/*.app").each do |app|
      destination = Cask.appdir.join(app.basename)
      target = destination_path.join(app)
      if destination.symlink?
        # destination exists but is symlink; removing and relinking
        puts "[#{self}] linking #{File.basename(destination)}"
        destination.delete
        destination.make_symlink(target)
      elsif destination.directory? || destination.file?
        puts "[#{self}] NOT linking #{File.basename(destination)} - already exists"
      else
        puts "[#{self}] linking #{File.basename(destination)}"
        destination.make_symlink(target)
      end
    end
  end
end

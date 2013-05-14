class Cask
  class AppLinker
    def initialize(cask)
      @cask = cask
    end

    def link
      @cask.linkable_apps.each { |app| link_app(app) }
    end

    def unlink
      @cask.linkable_apps.each { |app| unlink_app(app) }
    end

    def unlink_app(app)
      app_path = Cask.appdir.join(app.basename)
      if app_path.exist? && app_path.symlink?
        ohai "Removing link: #{app_path}"
        app_path.delete
      end
    end

    def link_app(app)
      app_path = Cask.appdir.join(app.basename)
      if app_path.directory? && !app_path.symlink?
        ohai "It seems there is already an app at #{app_path}; not linking."
        return
      end
      ohai "Linking #{app.basename} to #{app_path}"
      system %Q(/bin/ln -hfs "#{app}" "#{app_path}")
    end
  end
end

require 'fileutils'

include FileUtils

namespace :symlinks do
  task :create do
    # Symlink each dotfile to $HOME
    dotfiles.each do |dotfile|
      ln_s expand_path(dotfile), expand_path("~/#{basename dotfile}")
    end
  end

  task :clean do
    # Remove all symlinked dotfiles in $HOME
    dotfiles.each do |dotfile|
      rm expand_path("~/.Trash/#{basename dotfile}"), force: true
      mv expand_path("~/#{basename dotfile}"), expand_path('~/.Trash'), force: true if exists? "~/#{basename dotfile}"
    end
  end

  task :update => [:clean, :create]
end

def dotfiles
  Dir.glob('**/.*').select { |object| File.file?(object) }
end

def exists?(file)
  File.exists?(expand_path file)
end

def basename(path)
  File.basename(path)
end

def expand_path(path)
  File.expand_path(path)
end

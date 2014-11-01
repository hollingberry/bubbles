require 'yaml'

task :default => 'symlinks:update'

namespace :symlinks do
  desc 'Update the symlinks'
  task :update => [:clean, :create]

  desc 'Create each symlinks'
  task :create do
    # Symlink each file to its associated destination directory
    symlinks.each do |files, dest|
      files.each do |file|
        ln_s File.expand_path(file), "#{dest}/#{File.basename(file)}"
      end
    end
  end

  desc 'Delete each symlinks'
  task :clean do
    # Remove each file from its associated destination directory
    symlinks.each do |files, dest|
      files.each do |file|
        if File.exists? "#{dest}/#{File.basename(file)}"
          rm "#{dest}/#{File.basename(file)}", force: true
        end
      end
    end
  end
end

def symlinks
  symlinks = YAML.load_file('symlinks.yml')
  symlinks.dup.each do |src, dest|
    files = Dir[src].select { |file| File.file? file }
    dest = File.expand_path(dest)
    symlinks[files] = dest
    symlinks.delete(src)
  end
  symlinks
end

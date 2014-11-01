require 'yaml'

task :update => [:clean, :install]

desc 'Install the dotfiles on your system'
task :install do
  # Symlink each file to its associated destination directory
  symlinks.each do |files, dest|
    files.each do |file|
      ln_s File.expand_path(file), "#{dest}/#{File.basename(file)}"
    end
  end
end

desc 'Remove the installed dotfiles from your system'
task :clean do
  # Remove each file from its associated destination directory
  symlinks.each do |files, dest|
    files.each do |file|
      path = "#{dest}/#{File.basename(file)}"
      rm path, force: true if File.exists? path
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

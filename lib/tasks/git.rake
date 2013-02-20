namespace :git do
  desc "USAGE: rake git:big_files[branch, from_size_and_up]"
  task :big_files, :head, :treshold do |t, args|
    head, treshold = args[:head], args[:treshold]
    head ||= 'HEAD'
    Megabyte = 1000 ** 2
    treshold = (treshold || 0.1).to_f * Megabyte
    big_files = {}
    #system "git rev-list #{head}"
    IO.popen("git rev-list #{head}", 'r') do |rev_list|
      rev_list.each_line do |commit|
        commit.chomp!
        for object in `git ls-tree -zrl #{commit}`.split("\0")
          bits, type, sha, size, path = object.split(/\s+/, 5)
          size = size.to_i
          big_files[sha] = [path, size, commit] if size >= treshold
        end
      end
    end

    big_files.each do |sha, (path, size, commit)|
      where = `git show -s #{commit} --format='%h: %cr'`.chomp
      puts "%4.1fM\t%s\t(%s)" % [size.to_f / Megabyte, path, where]
    end
  end
end
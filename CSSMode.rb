#!/usr/bin/ruby
PLISTPATH = './CSS.mode/Contents/Resources/'

file = File.read(PLISTPATH + 'CodaCompletion.plist')
newfile = File.open( PLISTPATH + "CodaCompletion.plist.new", "w" )

file.each_line do |line|
  line = line.gsub(/<string>: <\/string>/, '<string>:</string>')
  if line[/\A	*/].size === 3
    line = line.gsub(/			<string>\{\d+\, 0\}<\/string>/) {|s| '			<string>{'+ (s.split(/(\d+)/)[1].to_i - 1).to_s() +', 0}</string>' }
  end
  newfile << line
end

newfile.close

File.rename(PLISTPATH + "CodaCompletion.plist", PLISTPATH + "CodaCompletion.plist.bak")
File.rename(PLISTPATH + "CodaCompletion.plist.new", PLISTPATH + "CodaCompletion.plist")

#God.watch do |w|
#  w.name = "simple"
#    w.start = "ruby /Users/kembostaff/workspace/github/handyScripts/gems/god/simple.rb"
#      w.keepalive
#      end
      God.watch do |w|
        w.name = "simple"
	  w.start = "ruby /Users/kembostaff/workspace/github/handyScripts/gems/god/simple.rb"
	    w.keepalive(:memory_max => 150.megabytes,
	                  :cpu_max => 50.percent)
	    end

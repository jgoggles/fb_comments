namespace :facebook_connect do
  desc "Copies fbconnect.js into public/javascripts/mephisto/"
  task :install do
    js = File.dirname(__FILE__) + '/../../../../public/javascripts/mephisto/fb_comments.js'
    htm = File.dirname(__FILE__) + '/../../../../public/xd_receiver.htm'
    FileUtils.cp File.dirname(__FILE__) + '/../fb_comments.js', js unless File.exist?(js)
    FileUtils.cp File.dirname(__FILE__) + '/../xd_receiver.htm', htm unless File.exist?(htm)
    puts "Plugin installed."
  end
end
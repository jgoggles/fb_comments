namespace :facebook_connect do
  desc "Copies fbconnect.js, xd_receiver.htm, and fb_login.gif into public directory"
  task :install do
    js = File.dirname(__FILE__) + '/../../../../public/javascripts/mephisto/fb_comments.js'
    htm = File.dirname(__FILE__) + '/../../../../public/xd_receiver.htm'
    gif = File.dirname(__FILE__) + '/../../../../public/images/mephisto/fb_login.gif'
    FileUtils.cp File.dirname(__FILE__) + '/../fb_comments.js', js unless File.exist?(js)
    FileUtils.cp File.dirname(__FILE__) + '/../xd_receiver.htm', htm unless File.exist?(htm)
    FileUtils.cp File.dirname(__FILE__) + '/../fb_login.gif', gif unless File.exist?(gif)
    puts "Plugin installed."
  end
end
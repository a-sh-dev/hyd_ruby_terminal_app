class User
  def initialize(name_input)
    @user = name_input
    @file_path = "./data/users/#{@user}.json"
  end

  def check
    # Existing user?
    if File.exist?(@file_path)
      File.open(@file_path, 'r')
      linebreak
      puts "  Welcome back, #{@user}!"
      puts "  Glad to see you again!"
    else # New user
      file = File.new(@file_path, 'w')
      file.close
      puts "  Glad that you're here, #{@user}!" 
      puts "  Every time you use this app, a log is created to check on how you doin.\nThe log is only accessible by you. So, make sure\nto remember the name (#{@user}) you've entered!"
    end
  end

end
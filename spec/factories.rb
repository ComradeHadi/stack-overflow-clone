FactoryGirl.define do

  factory(:question) do
    text("How R U?")
  end

  factory(:answer) do
    text("Good")
  end

  factory(:user) do
    email('test@test.com')
    password('password')
  end
  
end

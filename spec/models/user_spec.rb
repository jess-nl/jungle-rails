require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it 'validates fields' do
      user = User.new(:password => "rob", :password_confirmation => "khkjhkjhk", :email => "test@gmail.com", :first_name => "robby", :last_name => "ro")
      user.save
      expect(user).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end

end
require 'faker_user'

describe "Faker" do
  describe 'FakerUser' do
    before(:each) do
      @new_user = FakerUser.new
    end
    context 'all users' do
      it "should have a name which is a string" do
        name = @new_user.get_name
        expect(name).to be_instance_of String
      end

      it 'should have a valid date for a dob' do
        dob = @new_user.get_dob
        expect(dob).to be_instance_of Date
      end

      it 'should have a valid address' do
        
      end

      it 'should have a phonenumber' do
        
      end

      it 'should have an email address' do
        
      end
    end
  end
end
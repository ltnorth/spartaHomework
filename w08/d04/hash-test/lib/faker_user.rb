require 'faker'
require 'date'

class FakerUser
  def initialize
    @user = {
      "name" => Faker::Name.name,
      "dob" => Faker::Date.birthday,
      "address" => address = [
        "street" => Faker::Address.street_address,
        "city" => Faker::Address.city,
        "state" => Faker::Address.state,
        "zipcode" => Faker::Address.zip_code
      ],
      "phonenumber" => Faker::PhoneNumber.cell_phone,
      "email" => Faker::Internet.free_email
    }
  end

  def get_name
    @user['name']
  end

  def get_dob
    Date.parse(@user['dob'])
  end

  def get_address
    @user['address']
  end
end

puts FakerUser.new.get_address






require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.new(email: "test@email.com", password: "foobar123", password_confirmation: "foobar123")}
  let(:valid_email_regex) { /^[a-zA-Z0-9\+]+(?:\.[a-zA-Z0-9\+]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/}

  it "creates a new valid user" do
    expect(user.valid?).to be true
  end

  it "creates an invalid user if password and passowrd confirmation are not equal" do
    user.password_confirmation = "_foobar123"
    expect(user.valid?).to_not be true
  end

  it "ensures that the email is valid by testing against regex" do
    expect(user.email.match?(valid_email_regex)).to be true

    user.email = "random_bad@email"
    expect(user.email.match?(valid_email_regex)).to be false
  end
end

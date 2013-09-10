require 'spec_helper'

describe User do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:phone) }
  it { should allow_value("email@addresse.foo").for(:email) }
  it { should_not allow_value("foo").for(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value("(21) 9999-9999").for(:phone) }
  it { should allow_value("(21) 99999-9999").for(:phone) }
  it { should_not allow_value("(21) 99999999").for(:phone) }
end

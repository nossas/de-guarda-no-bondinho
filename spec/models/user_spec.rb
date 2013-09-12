require 'spec_helper'

describe User do
  before { Gibbon::API.stub(:new).and_return(double(lists: double(subscribe: true))) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:phone) }
  it { should allow_value("email@addresse.foo").for(:email) }
  it { should_not allow_value("foo").for(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value("(21) 99999999").for(:phone) }
  it { should allow_value("(21) 999999999").for(:phone) }
  it { should_not allow_value("(21) 9999999").for(:phone) }

  describe "#mailchimp_sync" do
    context "when Gibbon raises an exception" do
      before { Gibbon::API.stub_chain(:new, :lists, :subscribe).and_raise("my stubed exception") }
      it "should log the exception output" do
        Rails.logger.should_receive(:info).with("my stubed exception")
        subject.send(:mailchimp_sync)
      end
    end
  end
end

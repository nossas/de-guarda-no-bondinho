class User < ActiveRecord::Base
  validates :name, :email, :phone, presence: true
  validates :email, format: { with: /([0-9a-zA-Z]+[-._+&amp;])*[0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}/ }
  validates :email, uniqueness: true
  validates :phone, format: { with: /\([\d]{2}\)\s[\d]{8,9}/ }
  after_create :mailchimp_sync

  private

  def mailchimp_sync
    begin
      Gibbon::API.new(ENV['MAILCHIMP_API']).lists.subscribe({
        :id => ENV['MAILCHIMP_LIST_ID'], 
        :email => {:email => self.email}, 
        :merge_vars => {FNAME: self.name}, 
        :double_optin => false
      })
    end
  end
end

class Invoice < ActiveRecord::Base
    validates :invoice_number, :total, :invoice_date, :status, presence: true
end  
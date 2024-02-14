class InvoiceService
    def self.getAllInvoice
        Invoice.all
    rescue ex
        { status: :error, message: ex}
    end

    def self.getInvoiceByDate(date_params)
        start_date = date_params[:start_date].to_date.beginning_of_day
        end_date = date_params[:end_date].to_date.end_of_day

        Invoice.where(invoice_date: start_date..end_date)
    rescue ex
        { status: :error, error: ex }
    end
end
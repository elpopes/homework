#test doubles are fake objects used to create isolation.
# takes the place of extenal interacting objects 

#implementation
class order
    def initialize(customer, product)
        @customer = customer
        @product = product
    end

    def send_confirmation_email
        email(
            to: @customer.email_address,
            subject: "Order Confirmation",
            body: self.summary
        )
    end

    def charge_customer
        @customer.debit_account(@product.cost)
    end
end

#rspec file
RSpec.describe Order do
    # create double by calling double method here:
    # RSpec::Mocks::Mock instance. a blank slate to add behavior to
    let(:customer) { double("customer") }
    subject(:order) { Order.new(customer) }

    it "sends email successfully" do
        # create stub (method standin) by calling allow:
        # the and_return returns whats in paras
        allow(customer).to receieve(:email_address).and_return("ned@appacademy.io")

        expect do
            order.send_confirmation_email
        end.to_not raise_exception
    end
end

# one line version:
let(:customer) { double("customer", :email_address => "ned@appacademy.io")}



#METHOD EXPECTATIONS:
RSpec.describe Order
  let(:customer) { double('customer') }
  let(:product) { double('product', :cost => 5.99) }
  subject(:order) { Order.new(customer, product) }

  it "subtracts item cost from customer account" do
    expect(customer).to receive(:debit_account).with(5.99)
    # all expectations set before the tested method below
    order.charge_customer
  end
end

#INTEGRATION TESTS
# use real objects instead of mocks to verify classes interact correctly

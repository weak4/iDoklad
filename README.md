# iDoklad

This is a ruby gem for Czech accounting cloud system [iDoklad.cz](http://idoklad.cz) api.

You can find official iDoklad.cz api documentation on https://app.idoklad.cz/developer.

## Installation

To install gem write in console:

    > gem install idoklad

Or in Gemfile:

    gem 'idoklad'

## Configuration

To get gem working you must create an iDoklad initializer file and insert **client_id** and **client_secret** values which you can obtain in [iDoklad.cz administration](https://app.idoklad.cz/Setting/LogonUser).  
Create *config/initializers/idoklad.rb* file with following content:

    # config/initializers/idoklad.rb

    require 'idoklad'
    Idoklad.configure do |c|
      c.client_id = **INSERT_YOUR_CLIENT_ID**
      c.client_secret = **INSERT_YOUR_CLIENT_SECRET**
    end

Of course replace **\*\*INSERT_YOUR_CLIENT_ID\*\*** and **\*\*INSERT_YOUR_CLIENT_SECRET\*\*** with proper values.

## Functionality

- [Getting List of Invoices](#getting-list-of-invoices)
- [Getting the Default Invoice](#getting-default-invoice)

### Getting List of Invoices

It returns the list of all issued invoices:

    @result = Idoklad::IssuedInvoices.get_list

### Getting Default Invoice

Returns an empty invoice with initial values according to the agenda settings. Good for issuing new invoice.

    @result = Idoklad::IssuedInvoices.get_list

## Contribution

The functionality is being added as I find it required. If you want to contribute or you want me to add some functionality, just [write me](http://coderocket.co).

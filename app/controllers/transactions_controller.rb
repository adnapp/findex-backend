require 'coinbase/wallet'
require_relative '../../.api_key.rb'
CLIENT = Coinbase::Wallet::Client.new(api_key: $api_key, api_secret: $api_secret )



class TransactionsController < ApplicationController

    def index 
        transactions = Transaction.all
        render json: transactions
    end

    def show
        transaction = Transaction.find(params[:id])
        render json: transaction
    end

    def create
        transaction = Transaction.create(transaction_params)
        render json: transaction
    end

    def destroy
        transaction = Transaction.find(params[:id])
        transaction.destroy
        render json: transaction
    end

    def testCrypto 

        account_id ="e0172921-57bc-53e5-aa6c-d6a02ea5d1ee"
        btcAdd1 = "7ec66567-2239-571b-8b45-234e70da9bcb"
        btcAdd2 = "652da520-9e4c-5ee6-be2e-f7c78c946ad2"

        account = CLIENT.account(account_id)
        transactions = account.list_buys
        addresses = account.address(btcAdd1)
        
        render json: transactions
 

    end

    private 

    def transaction_params
        params.permit(:name, :amount, :type, :category_id)
    end

end

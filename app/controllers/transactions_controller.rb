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

       

        account = CLIENT.account($account_id)
        transactions = account.list_buys
        addresses = account.address($btcAdd1)
        
        render json: transactions
 

    end

    private 

    def transaction_params
        params.permit(:name, :amount, :type, :category_id)
    end

end

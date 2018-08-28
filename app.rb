# frozen_string_literal: true

require './lib/blockchain'

require 'json'
require 'sinatra/base'
require 'sinatra/flash'

# Understands sending and receiving transaction hashes
class BlockchainApp < Sinatra::Base
  register Sinatra::Flash
  enable :sessions
  set :blockchain, Blockchain.new

  get '/' do
    @blockchain = settings.blockchain
    erb(:index)
  end

  post '/block/create' do
    flash[:notice] = if settings.blockchain.mine_block.nil?
                       'No transactions to verify!'
                     else
                       'Blocks mined successfully'
                     end
    redirect '/'
  end

  post '/transaction/create' do
    data = JSON.parse(request.body.read)['params']
    transaction = settings.blockchain.create_transaction(data)
    transaction.last[:hash]
  end

  run! if app_file == $PROGRAM_NAME
end

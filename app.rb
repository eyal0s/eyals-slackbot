require 'sinatra'
require 'httparty'
require 'json'

slack_tok = "zqhGFeSIMpu5M3zC1NCMXSy5"

get '/' do
  "Eyal's Slackbot"
end

post '/gateway' do
  message = params[:text]

  if message['token'] == slack_tok
    respond_message("bad token")
  else
    respond_message("lets start!")
  end
  # case action
  #   when 'issues'
  #     resp = HTTParty.get(repo_url)
  #     resp = JSON.parse resp.body
  #     respond_message "There are #{resp['open_issues_count']} open issues on #{repo}"
  # end
end

def respond_message message
  content_type :json
  {:text => message}.to_json
end

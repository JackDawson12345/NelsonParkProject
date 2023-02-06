namespace :users do
  desc "Gets Users from Xero"
  task :xero_users do

    require 'xero-ruby'
    require 'securerandom'


    creds = {
      client_id: '77E9A2B5838340789AF38670671CFF2B',
      client_secret: 'zfVH5vrgagpneL02QdGQbkGe3NipLmAhLK1uCuUhD70SCmuG',
      grant_type: 'client_credentials'
    }

    xero_client = XeroRuby::ApiClient.new(credentials: creds)

    @token_set = xero_client.get_client_credentials_token
    # save @token_set

    accessToken = @token_set["access_token"]

    users = xero_client.accounting_api.get_users('').users

    users.each do |user|

      userID = user.user_id
      userEmailAddress = user.email_address
      userFirstName = user.first_name
      userLastName = user.last_name
      userIsSubscriber = user.is_subscriber
      userOrganisationRole = user.organisation_role
      password = SecureRandom.hex(8)

      # User.create(user_id: userID, email: userEmailAddress, first_name: userFirstName, last_name: userLastName, is_subscriber: userIsSubscriber, organisation_role: userOrganisationRole)

      @user = User.new(email: userEmailAddress, password: password, password_confirmation: password, first_name: userFirstName, last_name: userLastName, is_subscriber: userIsSubscriber, organisation_role: userOrganisationRole)
      @user.save

    end

  end
end

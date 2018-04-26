RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.model Payment do
    create do
      field :payday
      field :expense
      field :value
      field :paid
      configure :expense_id do
        hide
      end
    end

    edit do
      field :payday
      field :expense
      field :value
      field :paid
      configure :expense_id do
        hide
      end
    end

    list do
      field :expense
      field :payday
      field :value
      field :paid
      field :created_at
      exclude_fields :updated_at
    end
  end

  config.model Expense do
    list do 
      field :name
      field :created_at
      field :updated_at
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end

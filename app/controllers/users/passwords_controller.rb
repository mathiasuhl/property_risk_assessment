# -*- encoding : utf-8 -*-
class Users::PasswordsController < Devise::PasswordsController
  include ApplicationHelper

  def new
    super
  end
end

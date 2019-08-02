class ContactrequestController < ApplicationController
  def index
  end

  def new
    @contactrequest = ContactRequest.new
  end
end

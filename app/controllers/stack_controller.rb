class StackController < ApplicationController
  before_action :chat_var
  layout :stack_layout
  def index; end

  def show()
    
    params[:page] = 'index' unless params[:page]
    # FAKE PARAMS
   
    render 'stack/'+ params[:page]
  end

  private
  def stack_layout
    
    if (params[:page] == 'login' or params[:page] == 'sign_up')
      return "blank"
    else
      return "application"
    end
  end
  
  def chat_var
    @chat = [{
      avatar: "256_rsz_1andy-lee-642320-unsplash.jpg",
      name: "Jenell D. Matney", 
      date: "4 days ago"
    }, {
      avatar: "256_daniel-gaffey-1060698-unsplash.jpg",
      name: "Sherri J. Cardenas", 
      date: "3 days ago"
    }, {
      avatar: "256_jeremy-banks-798787-unsplash.jpg",
      name: "Joseph S. Ferland", 
      date: "2 days ago"
    }, {
      avatar: "256_joao-silas-636453-unsplash.jpg",
      name: "Bryan K. Davis", 
      date: "1 day ago"
    }, {
      avatar: "256_luke-porter-261779-unsplash.jpg",
      name: "Elizabeth J. Ohara", 
      date: "4 hours ago"
    }, {
      avatar: "256_michael-dam-258165-unsplash.jpg",
      name: "Kaci M. Langston", 
      date: "just now"
    }]

  end
end

class ApplicationController < ActionController::Base
    add_flash_types :success, :info, :warning, :danger
    protect_from_forgery with: :exception

    def date_format(datetime)
      time_ago_in_words(dateime) + ''
    end
end

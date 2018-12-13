require 'http'
class VmRequest 
  BASE_URL = 'https://www.visualmanager.com/'
  url = "https://visualmanager.com/site/5759/module/6989/list"
  
  def self.perform
    login 
    update_record
  end

  def self.login
    get_auth_cookie = HTTP.get(BASE_URL)['Set-Cookie'].split(';')[0]
    response = HTTP
              .auth("Bearer null")
              .headers(accept: 'application/json', cookie: @auth_cookie)
              .post(BASE_URL + "api/login", json: {
                "email" => "jwofford@fischercompany.com",
                "password" => "password",
                "remember" => true, })
      set_session_ids(response)
      json_body = JSON.parse(response.to_s)
      json_body['token']
  end

  def self.update_record
    url = BASE_URL + 'api/modules/' + module_number + '/records/' + record_id.to_s
    full_auth_cookies =  "#{@php_session}; [object Object]; #{@auth_token}; #{@laravel_session}"
      HTTP.auth("Bearer #{@user_token}")
        .headers(cookie: full_auth_cookies, accept: 'application/json')
        .put(url, json: record_data)
  end

  def get_user_token
      response = HTTP.auth("Bearer null")
        .headers(accept: 'application/json', cookie: @auth_cookie)
        .post(BASE_URL + "api/login", json: {
          "email" => "jwofford@fischercompany.com",
          "password" => "password",
          "remember" => true,
        })
      set_session_ids(response)
      json_body = JSON.parse(response.to_s)
      json_body['token']
  end

  def get_auth_cookie
      HTTP.get(BASE_URL)['Set-Cookie'].split(';')[0]
  end

  def set_session_ids(response)
      @laravel_session = response["Set-Cookie"][1].split[0].delete(';')
      @php_session = response["Set-Cookie"][0].split(';')[0]
  end 
end



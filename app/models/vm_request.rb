require 'http'
class VmRequest 
  def self.perform
    base_url = "https://www.visualmanager.com/"
    get_auth_cookie = HTTP.get(base_url)['Set-Cookie'].split(';')[0]
    response = HTTP.auth("Bearer null")
        .headers(accept: 'application/json', cookie: get_auth_cookie)
        .post(base_url + "api/login", json: {
          "email" => "jwofford@fischercompany.com",
          "password" => "password",
          "remember" => true,
        })
    laravel_session = response["Set-Cookie"][1].split[0].delete(';')
    php_session = response["Set-Cookie"][0].split(';')[0]
    json_body = JSON.parse(response.to_s)
    user_token = json_body['token']
    get_user_token =  response = HTTP.auth("Bearer null")
        .headers(accept: 'application/json', cookie: @auth_cookie)
        .post(base_url + "api/login", json: {
          "email" => "jwofford@fischercompany.com",
          "password" => "password",
          "remember" => true,
        })
    json_body = JSON.parse(response.to_s)
    json_body['token']
    full_auth_cookies = "#{php_session}; [object Object]; #{user_token}; #{laravel_session}"
    new_url = base_url + 'api/modules/' + "6989" + '/records/1'
    HTTP.auth("Bearer #{user_token}")
      .headers(cookie: full_auth_cookies, accept: 'application/json')
      .put(new_url, json:{field_174508: "it worked!"})
  end
end

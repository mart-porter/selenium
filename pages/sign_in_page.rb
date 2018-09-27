class SignInPage

  #css selectors
  EMAIL_FIELD = {id: 'sso_Email'}
  PASSWORD_FIELD = {id: 'sso_Password'}
  LOGIN_BUTTON = {class: 'UIButton'}

  attr_reader :driver

  # class method

  def initialize(driver)
    @driver = driver
  end

  def enter_email(email)
    email_field = @driver.find_element(EMAIL_FIELD)
    email_field.send_keys(email)
  end

  def enter_password(password)
    password_field = @driver.find_element(PASSWORD_FIELD)
    password_field.send_keys(password)
  end

  def click_login
    login_button = @driver.find_element(LOGIN_BUTTON)
    login_button.click
    sleep(1)
  end

end
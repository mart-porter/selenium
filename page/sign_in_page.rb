class SignInPage

  #css selectors
  SIGN_IN_PAGE = {class:'UISageOne'}
  EMAIL_FIELD = {id: 'sso_Email'}
  PASSWORD_FIELD = {id: 'sso_Password'}
  LOGIN_BUTTON = {class: 'UIButton'}
  SIGN_IN_VALIDATION = {id: 'validationSummary'}

  attr_reader :driver

  # class method

  def initialize(driver)
    @driver = driver
    @driver.get 'https://20181003-accountantedition-uat.sageone.biz'
    @driver.find_element(SIGN_IN_PAGE).displayed?.should == true
  end

  def
    sign_in(email,password)
    @driver.find_element(EMAIL_FIELD).send_keys(email)
    @driver.find_element(PASSWORD_FIELD).send_keys(password)
    @driver.find_element(LOGIN_BUTTON).click
    sleep(1)
  end

  def
    error_validation_present?
    @driver.find_element(SIGN_IN_VALIDATION).displayed?
  end
end
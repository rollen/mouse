Given /^a file "([^"]*)" with a list of port numbers and protocols:$/ do |filename, content|
  steps %{
    Given a file named "#{filename}" with:
      """
      #{content}
      """
  }
end

When /^I run mouse with the file "([^"]*)"$/ do |filename|
  steps %{
    When I successfully run `mouse --file #{ARUBA_TMP_FILE_DIR}/#{filename}`
  }
end

Then /^I should see that the ports specified in the file "([^"]*)" are open$/ do |filename|
  pending # express the regexp above with the code you wish you had
end

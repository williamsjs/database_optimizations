class AssemblyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.assembly_mailer.report.subject
  #
  def report(email, hits, assembly)
    @greeting = "Hi"
    @hits = hits
    @assembly = assembly
    mail to: email
  end
end

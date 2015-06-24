# Preview all emails at http://localhost:3000/rails/mailers/assembly_mailer
class AssemblyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/assembly_mailer/report
  def report
    AssemblyMailer.report
  end

end

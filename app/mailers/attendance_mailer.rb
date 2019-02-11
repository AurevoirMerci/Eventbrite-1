class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def presence_email(attendance)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @attendance = attendance
    @participant = Event.find(@attendance.participant.id)
    @admin = User.find(@participant.admin.id)


    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @admin.email, subject: 'Be ready for our event !')
  end
end
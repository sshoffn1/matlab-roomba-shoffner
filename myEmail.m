% allows matlab to access email accout. Only needs to be done once
setpref('Internet','SMTP_Server','smtp.gmail.com')
setpref('Internet','E_mail','iroomba.s6.2@gmail.com')
setpref('Internet','SMTP_Username','iroomba.s6.2@gmail.com')
setpref('Internet','SMTP_Password','EF230roomba')
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');

%sendmail('recipients','subject','message') %command template 
%for roomba project should have difference versions put in if-else
%loops to send different messages when robot does different tasks
%or gets different out comes.

% EXAMPLE 
sendmail('nreeder2@vols.utk.edu','iRoomba','email is successful')

%% to send a text use same format but change email address to
% 'phonenumber@txt.att.net'                AT&T
% 'phonenumber@tmomail.net'                T-Mobile
% 'phonenumber@messaging.sprintpcs.com'    Sprint
% 'phonenumber@vtext.com'                  Verizon
% 'phonenumber@vmobl.com'                  Virgin Mobile

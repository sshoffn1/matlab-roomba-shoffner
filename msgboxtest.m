% EF 230 University of Tennessee
% User Interaction - msgbox
clear all; close all; clc;
format compact;
  
%% msgbox - shows text to user in a dialog box
% notice that the program is not stopped unless you use the waitfor commaned
h=msgbox('This is a message');
disp('hey');
% the waitfor command waits for the message box to be closed
waitfor(h); % wait for the msg box to close
disp('first msg box was closed');
  
% message box can include an optional title, multiple lines, and a custom icon
goodnum = 42;
txt{1}='A message box with multiple lines and a custon icon';
txt{2}=sprintf('The answer to everything is %u\n',goodnum);
%creates images and message boxes of favorite TA's
imgurl='https://ef.engr.utk.edu/efp/pix/jfagan2.jpg';
imgfile='ta.jpg';
options = weboptions('CertificateFilename','');
websave(imgfile, imgurl, options);
imgdata=imread(imgfile);
h = msgbox(txt,'Josh''s World','custom',imgdata);
waitfor(h);
imgurl2='https://ef.engr.utk.edu/efp/pix/cjohn221.jpg';
imgfile2='ta2.jpg'
options = weboptions('CertificateFilename','');
websave(imgfile2, imgurl2, options);
imgdata2=imread(imgfile2);
h = msgbox(txt,'Corey''s Window','custom',imgdata2);
waitfor(h);
imgurl3='https://ef.engr.utk.edu/efp/pix/ashaw26.jpg';
imgfile3='ta3.jpg';
options = weboptions('CertificateFilename','');
websave(imgfile3, imgurl3, options);
imgdata3=imread(imgfile3);
h = msgbox(txt,'Answers from Angus','custom',imgdata3);
waitfor(h);
imgurl4='https://ef.engr.utk.edu/efp/pix/edeakins.jpg';
imgfile4='ta4.jpg';
options = weboptions('CertificateFilename','');
websave(imgfile4, imgurl4, options);
imgdata4=imread(imgfile4);
h = msgbox(txt,'A message from Ethan','custom',imgdata4);
waitfor(h);
  
% helpdlg, warndlg, and errordlg are special cases of msgbox
% waitfor and the msgbox/*dlg command can be combined (nested)
waitfor(helpdlg('This is a help dialog'));
waitfor(warndlg('This is a warning dialog'));
waitfor(errordlg('This is an error dialog'));
  
%% There is also a waitbar dialog
% you are responsible for creating, updating, and deleting the dialog box
h_wait=waitbar(0,'Please wait');
steps=25;
for i=1:steps
    pause(.1)
    waitbar(i/steps); % tell the waitbar to update
end
delete(h_wait);
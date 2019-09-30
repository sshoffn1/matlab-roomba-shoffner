%EF230
%Samantha Shoffner sshoffn1
%9/27/19
%attemptGUI

%GUI
modes = {'Patrol','Movement','music','test'};
%implement a loop once mode has finished
[indx,tf]=listdlg('Liststring',modes,'PromptString','Select a mode');
if tf==1
   disp(indx)
   if indx==1
       temp = msgbox('time to patrol')
       %run patrol
       testpatrol
   elseif indx==2
       %run move
       testpatrol
   elseif indx==3
       %run music
       temp = msgbox('whe')
   elseif indx==4
       %run test
       temp = msgbox('testing')
   end
end


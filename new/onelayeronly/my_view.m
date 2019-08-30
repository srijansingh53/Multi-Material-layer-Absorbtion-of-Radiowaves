 function [state, options,optchanged] =  my_view(options,state,~,~)  
    optchanged = false; 
    disp(state.Population) 
    end
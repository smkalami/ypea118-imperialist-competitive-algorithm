%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA118
% Project Title: Implementation of Imperialist Competitive Algorithm (ICA)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, Imperialist Competitive Algorithm (ICA) in MATLAB (URL: https://yarpiz.com/247/ypea118-imperialist-competitive-algorithm), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function i = RouletteWheelSelection(P)

    r = rand;
    
    C = cumsum(P);
    
    i = find(r <= C, 1, 'first');

end